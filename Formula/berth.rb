class Berth < Formula
  desc "Isolated environment for running AI coding agents safely"
  homepage "https://github.com/0x666c6f/berth"
  url "https://github.com/0x666c6f/berth/releases/download/v1.0.0/berth-v1.0.0-darwin-universal.tar.gz"
  sha256 "721c90d322b7f651067b057d928941414b75a872f2fac00d599ecb33b5568de8"
  version "1.0.0"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin"/"berth"
    bin.install_symlink libexec/"bin"/"berth-tui"
    bin.install_symlink libexec/"bin"/"berth-claude"
    bin.install_symlink libexec/"bin"/"berth-codex"
  end

  test do
    assert_match "berth", shell_output("\#{bin}/berth --version")
  end
end
