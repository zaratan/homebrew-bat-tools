class Batdetect < Formula
  desc "Detect and track bats in thermal binocular videos"
  homepage "https://github.com/zaratan/chiro-dvr"
  version "0.1.0"
  license "GPL-3.0-or-later"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on macos: :sonoma

  on_macos do
    on_arm do
      url "https://github.com/zaratan/chiro-dvr/releases/download/v#{version}/batdetect-darwin-arm64.tar.gz"
      sha256 "0c12b7aab3a092885197117e5fc65e034062ece28d69c767770311d36f5f8062"
    end
  end

  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"batdetect"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/batdetect --version")
  end
end
