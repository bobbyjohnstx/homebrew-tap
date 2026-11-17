class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.0/tinycode-darwin-arm64.tar.gz"
      sha256 "756b36c5d8dcfd6be852099f018b8bc3470620be8b10187e6c4dded977ea8b3d"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.0/tinycode-darwin-amd64.tar.gz"
      sha256 "50b6814b89e9cab870bd22707725992f7e9425fc8a8bee2bf1255a7a2c2d5551"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.0/tinycode-linux-arm64.tar.gz"
      sha256 "fe82ba715d172f2e28d2630b3c0e6f042c76b8f39cfc2d888f7ea59b4a4ccdf5"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.0/tinycode-linux-amd64.tar.gz"
      sha256 "74290854dd24db72898348d9ff417add541d35fa925724255ba8d04ff3f1e16f"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
