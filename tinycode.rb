class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.4/tinycode-darwin-arm64.tar.gz"
      sha256 "b5e59494fc8f4313d52fada0616e6b87c8cc1ec078138ee484593ddc4fa83553"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.4/tinycode-darwin-amd64.tar.gz"
      sha256 "13628bddb6c4e48f956e75a0499bbd3005768fa8e4decc90c2831a6016c4a46c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.4/tinycode-linux-arm64.tar.gz"
      sha256 "e25b07e3bff9958682e54a66a7cd887ad4a86a2ec5ddabac9e8745638abac973"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.4/tinycode-linux-amd64.tar.gz"
      sha256 "1f4763db41024bd7bded4d82a3737f7e700cbfcb508b569b00f1a31edc86052f"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
