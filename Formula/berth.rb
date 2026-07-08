class Berth < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/berth"
  url "https://github.com/0x666c6f/berth/releases/download/v1.5.0/berth-v1.5.0-darwin-universal.tar.gz"
  sha256 "6b7ceb04a2def87ab078e2e73d22259d9172c962b5daa40c5c8da35ea9e3f80a"
  version "1.5.0"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin"/"berth"
    bin.install_symlink libexec/"bin"/"berth-tui"
    bin.install_symlink libexec/"bin"/"detonate"
    bin.install_symlink libexec/"bin"/"berth-claude"
    bin.install_symlink libexec/"bin"/"berth-codex"
  end

  test do
    assert_match "berth", shell_output("\#{bin}/berth --version")
  end
end
