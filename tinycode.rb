class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.5.0/tinycode-darwin-arm64.tar.gz"
      sha256 "a7b874e39f962d2c33666c3eecc89063d3f2efca125b7bdb025224f0a4c54571"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.5.0/tinycode-darwin-amd64.tar.gz"
      sha256 "eb6a69569c603809afd618e6196c43c665812ffda8c4c11366599cdfab16dca2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.5.0/tinycode-linux-arm64.tar.gz"
      sha256 "350a7d00d3a7eb225e06b1993c1c0a20cdde18b35a2918dfca871d7e71d573c7"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.5.0/tinycode-linux-amd64.tar.gz"
      sha256 "cdc5e3b2813a93e5d495ee6de5a1d4ca6b0ff2094375004251949cf9de1f85d5"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
