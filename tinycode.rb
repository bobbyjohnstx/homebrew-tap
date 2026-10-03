class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.2/tinycode-darwin-arm64.tar.gz"
      sha256 "a5b5fd084dda274046b1a319109d4efb63f7be83c0d6152c4d7de473856d4c5a"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.2/tinycode-darwin-amd64.tar.gz"
      sha256 "bd3e36429d339bdaa424e08ddb2186e51f979a7cab8d5cfeb71bdb57663121d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.2/tinycode-linux-arm64.tar.gz"
      sha256 "baba695cac3bec45bd67235a4e16c16746a5c2a163c6646886aba269650514ef"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.2/tinycode-linux-amd64.tar.gz"
      sha256 "3ee5aa2a2fc72cfc56ebbae71a2164bb5b7eed18c003fe8ce16dcc131d084e8a"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
