class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.2.0/tinycode-darwin-arm64.tar.gz"
      sha256 "96b98eea41ed224feec63eb4b24a2b1a4a06d7e544e16bb4136378b897f48185"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.2.0/tinycode-darwin-amd64.tar.gz"
      sha256 "2333f280f6e3cbbcef4c5b226b15506acab9f15eb5e6a62ff08700e38c71eb6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.2.0/tinycode-linux-arm64.tar.gz"
      sha256 "914f2234def8e9cf700a91453f1a60f0366fd0d7eb3599ee6236e66b2f2efdc2"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.2.0/tinycode-linux-amd64.tar.gz"
      sha256 "fbd0ee345f193e7e17b6a4757d24675ecb96879e0b1986588f3daf5c36c2e1d1"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
