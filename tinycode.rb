class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.6.1/tinycode-darwin-arm64.tar.gz"
      sha256 "aa075d197d46750b7a622ec9c416ed3a79c30f4fa404cfb1173ad3258c49dee3"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.6.1/tinycode-darwin-amd64.tar.gz"
      sha256 "50cc7d489beb9f97d70af413f111b070418acaf3e9afa8084dcc4ece934914a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.6.1/tinycode-linux-arm64.tar.gz"
      sha256 "8608071345d84f8448f6452e22db6a9694f287b70f5710678c9313a438972c3b"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.6.1/tinycode-linux-amd64.tar.gz"
      sha256 "440f9c6c9e09118bf0a9f483137386493a7a0db1cf0ed9c5e25ea477f5981760"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
