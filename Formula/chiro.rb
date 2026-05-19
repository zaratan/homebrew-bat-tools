class Chiro < Formula
  desc "Interactive TUI to prepare .wav recordings in Vigie-Chiro format"
  homepage "https://github.com/zaratan/chiro-tools"
  version "0.1.8"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  on_macos do
    on_arm do
      url "https://github.com/zaratan/chiro-tools/releases/download/v#{version}/chiro-darwin-arm64.tar.gz"
      sha256 "e36e8ec53600c0ca8496f620b6f75c6fa419c116bf6f363f564f4b2c645b8b42"
    end
  end

  def install
    bin.install "chiro-darwin-arm64" => "chiro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chiro --version")
  end
end
