class Berth < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/berth"
  url "https://github.com/0x666c6f/berth/releases/download/v1.4.2/berth-v1.4.2-darwin-universal.tar.gz"
  sha256 "3e77049568113170db2e1742f0253da7c5fb0b15af03f70399c4c434ff1cde83"
  version "1.4.2"
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
