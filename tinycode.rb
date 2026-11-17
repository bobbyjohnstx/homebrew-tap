class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.1/tinycode-darwin-arm64.tar.gz"
      sha256 "47738c3e38d2635913cbcfe36280d9164115173494b292d2b6053386a11403d9"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.1/tinycode-darwin-amd64.tar.gz"
      sha256 "8fc0b0db2d19b9989a4826bf9aa4861033160c2d7d9a8dc33000e8b9de354d4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.1/tinycode-linux-arm64.tar.gz"
      sha256 "ed0794c71c05a62b58c5df5e71b3c16a5b31201ecbb88e79ed3f55336708a7e9"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.1/tinycode-linux-amd64.tar.gz"
      sha256 "36601ae6aafb105008bc9f98c2b2b906008042018c670ac721f2c3163ae91d3a"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
