class SafeAgentic < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/safe-agentic"
  url "https://github.com/0x666c6f/safe-agentic/releases/download/v0.4.0/safe-agentic-v0.4.0-darwin-universal.tar.gz"
  sha256 "4b1820ff71e44218a92e31fa540e6ef0a4a212ed6550544ef6adac18a6e4f24c"
  version "0.4.0"
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
