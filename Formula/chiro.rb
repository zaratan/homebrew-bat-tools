class Chiro < Formula
  desc "Interactive TUI to prepare .wav recordings in Vigie-Chiro format"
  homepage "https://github.com/zaratan/chiro-tools"
  version "0.1.9"
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
      sha256 "90ba3e0be775504bb3aba45e4d9fae87ce03e3ae33c79faa5e26040b6a0d7d24"
    end
  end

  def install
    bin.install "chiro-darwin-arm64" => "chiro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chiro --version")
  end
end
