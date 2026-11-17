class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.1/tinycode-darwin-arm64.tar.gz"
      sha256 "a8e7e15784241c21d98853acbb433a4e2b4fa71e66180d68868438918c10d1e4"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.1/tinycode-darwin-amd64.tar.gz"
      sha256 "1a840a4166ddedc4a7efdfc7bb81b0f0926165c3bfa52d24a0bc3ba3a3ced1e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.1/tinycode-linux-arm64.tar.gz"
      sha256 "c7785f373944d5a13247167b0478d48b235c3632f8bf2512643378d267b39e87"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.9.1/tinycode-linux-amd64.tar.gz"
      sha256 "38a43c0beb70ce9ad56115ced2f071a20f938ce3a90a830c43cdd2e664aa9ada"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
