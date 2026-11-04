class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.7.0/tinycode-darwin-arm64.tar.gz"
      sha256 "e95f4c943f43b14cd863f141c9ad87f672113471922e2efbd3f28b8c7cf1627c"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.7.0/tinycode-darwin-amd64.tar.gz"
      sha256 "2ea8388030bd42112a214e6e039b64f854eb1c215856f2cc85ec04873cfb68de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.7.0/tinycode-linux-arm64.tar.gz"
      sha256 "59e109050161ea4fd211c847474f82dc35004f9ed46b2a9839c2cfbfe1f050d8"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.7.0/tinycode-linux-amd64.tar.gz"
      sha256 "b91909a564dd2f4ee1225bd03fe7f40cf1f6e5bb4892060bce11688067f5c117"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
