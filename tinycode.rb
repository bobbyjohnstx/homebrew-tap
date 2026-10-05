class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.3/tinycode-darwin-arm64.tar.gz"
      sha256 "4fed0afb3b8dde2f0334727dc33d294fdcdec7d5e2b5ba9a991775d85349de0c"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.3/tinycode-darwin-amd64.tar.gz"
      sha256 "9eb45cf753059246fb1e5c80c5a925ab6b7d983f225c7686b11e4b287d048d89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.3/tinycode-linux-arm64.tar.gz"
      sha256 "896ea94c68835168c31c04fc4f76b282b6641f23d12279f3032e78fbd4bf59d8"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.3/tinycode-linux-amd64.tar.gz"
      sha256 "41542e205597728b0d0d9aad63584ae9ff9f77e577762565ac1e3151b2bb07f3"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
