class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.2/tinycode-darwin-arm64.tar.gz"
      sha256 "4076553e11cfac5ef1e80c1336a35dd4e5ae5e8b98a2f63c6763e6fe9ad51ff9"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.2/tinycode-darwin-amd64.tar.gz"
      sha256 "5886009e4a36ceee13fb2fc0b32c93d63333913a95a4ad75f761b6a9cef8f665"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.2/tinycode-linux-arm64.tar.gz"
      sha256 "022fda512d434b2ef5a3cfdb80059a7813d070e22e8a48319245a1e07070b355"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.2/tinycode-linux-amd64.tar.gz"
      sha256 "8b0f6a47d18f66535270c890bd30bfac0984ebc630f4bc6bb68332a78b04a32b"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
