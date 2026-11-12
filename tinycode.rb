class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.8.0/tinycode-darwin-arm64.tar.gz"
      sha256 "ec4a3601d2cd30f1488d9f6146b81fde16a546a980b876cdbb0eadb007680274"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.8.0/tinycode-darwin-amd64.tar.gz"
      sha256 "76fae7b424e8384743d0789215cf9ed98ab6402683f4679ae1374daba14e0efc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.8.0/tinycode-linux-arm64.tar.gz"
      sha256 "e23aab1f485c4ae4f63c4ee5c023a9d6c4f240c4ec881e37d5f287ab3e1bae13"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.8.0/tinycode-linux-amd64.tar.gz"
      sha256 "c5b80c751cbbb15b5cefb4e26de7d8db887b729ca561af0b235dce42fecfae46"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
