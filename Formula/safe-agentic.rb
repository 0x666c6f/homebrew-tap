class SafeAgentic < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/safe-agentic"
  url "https://github.com/0x666c6f/safe-agentic/releases/download/v0.8.1/safe-agentic-v0.8.1-darwin-universal.tar.gz"
  sha256 "0a2210f89bb7d3797a8079c1f40278d1c8c5214d2aa5763bcdd08dcf0e904b2f"
  version "0.8.1"
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
