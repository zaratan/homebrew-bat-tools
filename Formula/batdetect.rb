class Batdetect < Formula
  desc "Detect and track bats in thermal binocular videos"
  homepage "https://github.com/zaratan/chiro-dvr"
  version "0.2.0"
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
      sha256 "53f9655c3990a868e8434d88bd1fd0c36909ed7cedfb238dd97eaf0380831371"
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
