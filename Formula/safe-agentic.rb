class SafeAgentic < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/safe-agentic"
  url "https://github.com/0x666c6f/safe-agentic/releases/download/v0.8.0/safe-agentic-v0.8.0-darwin-universal.tar.gz"
  sha256 "bd66d513f50f172449243771f8217f26bb5bda577e997ae95cfcddb3902661fb"
  version "0.8.0"
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
