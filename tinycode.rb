class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.4/tinycode-darwin-arm64.tar.gz"
      sha256 "74a25996af9b049514c94efdb3c843544608e01a59e8a8d6773ffbd2d1a02b88"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.4/tinycode-darwin-amd64.tar.gz"
      sha256 "240b8e2d4eb5823a17ab5d824699e50bdfcc41e061390ec3244e08229c440470"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.4/tinycode-linux-arm64.tar.gz"
      sha256 "9d9bcc3be1284e4039b0122b8c492e1ce4122f848cf08780c315a16450706399"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.4/tinycode-linux-amd64.tar.gz"
      sha256 "d054f898af71ff040dc041ae1e4199a011b19bf71bfe1d262440affa188aa459"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
