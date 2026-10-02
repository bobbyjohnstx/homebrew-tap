class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.0/tinycode-darwin-arm64.tar.gz"
      sha256 "5c6e8bac72cafc704cd4bea11d4208ba1d9ea8da381fe75f987824133574d925"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.0/tinycode-darwin-amd64.tar.gz"
      sha256 "dbbdabc1c7dc2ee53f48d7598e111d40d8b3a9a5f39ec7bec5846e1719add690"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.0/tinycode-linux-arm64.tar.gz"
      sha256 "23ce2f2f798116f163d8dd4fefc167b312dd2e741aa7f5cb372e804be284c7c8"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.0/tinycode-linux-amd64.tar.gz"
      sha256 "bf8b78e286a263d23727dee498b05d09ab53eac034763b7e176d21dae9371822"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
