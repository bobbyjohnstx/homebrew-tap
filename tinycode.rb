class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.3/tinycode-darwin-arm64.tar.gz"
      sha256 "75b5b6bfb1c95e938b41aeeb05e5e50366200b950322aade364628efc8f033a5"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.3/tinycode-darwin-amd64.tar.gz"
      sha256 "6f5fe63df9c56a2eb34cebb32b4b70f6878ce5c82b93a248fa0c36131de1006f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.3/tinycode-linux-arm64.tar.gz"
      sha256 "1650d47b21c8441473f2a9ba98222eb78e89b7146a5c10183c1b5413828de12e"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.3/tinycode-linux-amd64.tar.gz"
      sha256 "698896c17c5fb1ce72c9f16b156337c8a7068ddb64495cc4e2e434da577d508a"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
