class SafeAgentic < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/safe-agentic"
  url "https://github.com/0x666c6f/safe-agentic/releases/download/v0.2.0/safe-agentic-v0.2.0-darwin-universal.tar.gz"
  sha256 "69786a1de52bd3c4a68f4bcb5a309ee474f671e4dc1041e1aa2e5da4e4809acf"
  version "0.2.0"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin"/"safe-ag"
    bin.install_symlink libexec/"bin"/"safe-ag-tui"
  end

  test do
    assert_match "safe-agentic", shell_output("\#{bin}/safe-ag --version")
  end
end
