class SafeAgentic < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/safe-agentic"
  url "https://github.com/0x666c6f/safe-agentic/releases/download/v0.1.1/safe-agentic-v0.1.1-darwin-universal.tar.gz"
  sha256 "19325e582550d88d0c8b11180397d588bde6dfd2f867785a62d0cc47194b4443"
  version "0.1.1"
  license "MIT"

  def install
    libexec.install Dir["*"]
    {"agent" => "safe-ag", "agent-claude" => "safe-ag-claude", "agent-codex" => "safe-ag-codex"}.each do |src, dst|
      bin.install_symlink libexec/"bin"/src => dst
    end
  end

  test do
    assert_match "safe-agentic", shell_output("\#{bin}/safe-ag --version")
  end
end
