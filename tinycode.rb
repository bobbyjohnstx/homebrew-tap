class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-darwin-arm64.tar.gz"
      sha256 "a2411f34220faf069c5b4dd8e97bb306af266b6bb2b020eb41973606662eb9a8"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-darwin-amd64.tar.gz"
      sha256 "189f4a3bf3dd3d64547321e1cf36237470e4443ffc9263e1343655dc14ee53e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-linux-arm64.tar.gz"
      sha256 "c8e3c9704fa0c11a5557a37f4231275cae88f84cd998f8f4fc8270c20a2cd9e1"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-linux-amd64.tar.gz"
      sha256 "6484e938cd4355340d333c32221b515ebce379f3cb5839b1e8d37438c05e7876"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
