class SafeAgentic < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/safe-agentic"
  url "https://github.com/0x666c6f/safe-agentic/releases/download/v0.9.0/safe-agentic-v0.9.0-darwin-universal.tar.gz"
  sha256 "937cd0d57a5dff63e24c793830f05b693abc4e6d6b90dacb87e7979cedb9be08"
  version "0.9.0"
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
