class SafeAgentic < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/safe-agentic"
  url "https://github.com/0x666c6f/safe-agentic/releases/download/v0.3.0/safe-agentic-v0.3.0-darwin-universal.tar.gz"
  sha256 "bc187c919b7d95b95bb6d3e31650520cdeb508dc7812c7b9e24bf79deb15db3c"
  version "0.3.0"
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
