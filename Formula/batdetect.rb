class Batdetect < Formula
  desc "Detect and track bats in thermal binocular videos"
  homepage "https://github.com/zaratan/chiro-dvr"
  version "0.3.0"
  license all_of: ["MIT", "LGPL-2.1-or-later"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  on_macos do
    on_arm do
      url "https://github.com/zaratan/chiro-dvr/releases/download/v#{version}/batdetect-darwin-arm64.tar.gz"
      sha256 "e025953cdbc62003338034789fdcd797f33bbad2ffdcaa75bde9a4feb81b866d"
    end
  end

  def install
    bin.install "batdetect"
    prefix.install "licenses"
  end

  test do
    assert_match "batdetect #{version}", shell_output("#{bin}/batdetect --version")
  end
end
