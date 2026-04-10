class SafeAgentic < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/safe-agentic"
  url "https://github.com/0x666c6f/safe-agentic/releases/download/v0.1.0/safe-agentic-v0.1.0-darwin-universal.tar.gz"
  sha256 "2ba97905d652b570afbdd600355301a96f2bb9ba161ed716678688e9a49d64c8"
  version "0.1.0"
  license "MIT"

  def install
    libexec.install Dir["*"]
    %w[agent agent-claude agent-codex].each do |cmd|
      bin.install_symlink libexec/"bin"/cmd
    end
  end

  test do
    assert_match "safe-agentic", shell_output("\#{bin}/agent --version")
  end
end
