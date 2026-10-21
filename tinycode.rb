class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.6.0/tinycode-darwin-arm64.tar.gz"
      sha256 "68ae8223842c77ca99eee0ec22278cf3175aadb6dd477febd34c6bd4ff0fff1c"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.6.0/tinycode-darwin-amd64.tar.gz"
      sha256 "8a288105dbc8419b45de0d3427b45187488742a510ba456f4c248d5793c141ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.6.0/tinycode-linux-arm64.tar.gz"
      sha256 "fed5428cb481714ef2affd12197fe920e35e1f94426e9c3603eda76e994b8eb9"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.6.0/tinycode-linux-amd64.tar.gz"
      sha256 "7063aebbbbfc93502425e2aab1781a074903adc59032ecc1c0dacb747fafc7b5"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
