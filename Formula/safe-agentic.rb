class SafeAgentic < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/safe-agentic"
  url "https://github.com/0x666c6f/safe-agentic/releases/download/v0.5.0/safe-agentic-v0.5.0-darwin-universal.tar.gz"
  sha256 "d6e3fd62ae4741b39b2071e6ea0819a7b9c945bd7129a798702991191700f453"
  version "0.5.0"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin"/"safe-ag"
    bin.install_symlink libexec/"bin"/"safe-ag-tui"
    bin.install_symlink libexec/"bin"/"safe-ag-claude"
    bin.install_symlink libexec/"bin"/"safe-ag-codex"
  end

  test do
    assert_match "safe-agentic", shell_output("\#{bin}/safe-ag --version")
  end
end
