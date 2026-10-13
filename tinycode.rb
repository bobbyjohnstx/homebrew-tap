class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.3/tinycode-darwin-arm64.tar.gz"
      sha256 "d6a3d4f167439b03e4e000b54fc75ed5635505cbec715f2a8e16f3abc76e397c"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.3/tinycode-darwin-amd64.tar.gz"
      sha256 "1fb2af3f0bef785b7a1ea6a7aec29cf3dadb031eadf542dbcb625ab66562f9ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.3/tinycode-linux-arm64.tar.gz"
      sha256 "9a37239bbcabf6ab1594279076bbe4fc55b78bb64d1a4a7d79ee971585a9fc59"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.3/tinycode-linux-amd64.tar.gz"
      sha256 "fcd6a56774ebe5270acc62cfefdd46760de54092a56a6ea42dbb144ccce5cf59"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
