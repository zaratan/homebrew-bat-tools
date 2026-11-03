class Chiro < Formula
  desc "Interactive TUI to prepare .wav recordings in Vigie-Chiro format"
  homepage "https://github.com/zaratan/chiro-tools"
  version "0.1.15"
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
      sha256 "9553cd92d6d9a2844d77ee628297c8f43b508a0fd0be05b9cf1a1b9258d87fc2"
    end
  end

  def install
    bin.install "chiro-darwin-arm64" => "chiro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chiro --version")
  end
end
