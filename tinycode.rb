class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.5/tinycode-darwin-arm64.tar.gz"
      sha256 "98b3243d74e54cbdf3d0381f08329e1678a3f82aadf20904eb946ef9ff4521cf"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.5/tinycode-darwin-amd64.tar.gz"
      sha256 "89cdcd88e85ec089a80e20954f1c00dc6f9d11d7f0f1b7b2ed9d70ce4235f71e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.5/tinycode-linux-arm64.tar.gz"
      sha256 "31eebc87e6d80b59eedc5551d7db0d11be162f1138160df10b1f130761e7b1d5"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.5/tinycode-linux-amd64.tar.gz"
      sha256 "f80ae78e5529e3b71455e03821aafa0f95e31b6ed3e69fdab0d7621c065bd134"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
