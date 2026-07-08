class Berth < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/berth"
  url "https://github.com/0x666c6f/berth/releases/download/v1.4.1/berth-v1.4.1-darwin-universal.tar.gz"
  sha256 "a98abea4c75d03d277fa71ec45299978a0c4ed599526c95df794e615d9909613"
  version "1.4.1"
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
