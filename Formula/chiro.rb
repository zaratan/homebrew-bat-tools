class Chiro < Formula
  desc "Interactive TUI to prepare .wav recordings in Vigie-Chiro format"
  homepage "https://github.com/zaratan/chiro-tools"
  version "0.1.13"
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
      sha256 "b9c5d48ab677d22370fc7ed7ee8925f3e1aa538f1b311a38d23c05ee981e3cda"
    end
  end

  def install
    bin.install "chiro-darwin-arm64" => "chiro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chiro --version")
  end
end
