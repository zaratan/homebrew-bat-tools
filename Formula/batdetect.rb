class Batdetect < Formula
  desc "Detect and track bats in thermal binocular videos"
  homepage "https://github.com/zaratan/chiro-dvr"
  version "0.1.1"
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
      sha256 "4cdd96667a2fabf456e98c6ce3ce79d2d4a2872f376dd80cceeaf1f662f9f9ea"
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
