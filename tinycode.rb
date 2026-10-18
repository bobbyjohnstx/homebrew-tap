class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.4.1/tinycode-darwin-arm64.tar.gz"
      sha256 "7f5b47fb555323c371d358a857f133f823b954d28b903d59b2f361e5c0b78b93"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.4.1/tinycode-darwin-amd64.tar.gz"
      sha256 "016d0ed560a76af8baf31c3a3a63b228e2307f4aaef5bc5f70b983360f0656f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.4.1/tinycode-linux-arm64.tar.gz"
      sha256 "54d812a1e3b794197510b73071988c7c8e0eff3037f5e56b402971c96f5bb0c6"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.4.1/tinycode-linux-amd64.tar.gz"
      sha256 "c01fd170dc391c8a26d35d6ffdfdf972e656f6a550a960e4308918afc9ce986f"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
