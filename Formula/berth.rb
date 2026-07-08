class Berth < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/berth"
  url "https://github.com/0x666c6f/berth/releases/download/v1.5.1/berth-v1.5.1-darwin-universal.tar.gz"
  sha256 "e802cc1663c5844d6339de74fcd1ba3680c764a6cf2b08f5dda4ed428f663c9a"
  version "1.5.1"
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
