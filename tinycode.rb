class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.4.0/tinycode-darwin-arm64.tar.gz"
      sha256 "27c7f0617a9b8c2bb5cfc64f8e266bcb41e4df56331027e1afc4cc4884e8856b"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.4.0/tinycode-darwin-amd64.tar.gz"
      sha256 "be2f864221a9b94506a4a05f3791feb34578ccddb628db6870996b636cf96bbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.4.0/tinycode-linux-arm64.tar.gz"
      sha256 "88d5a4431f02dedd484d00f5122927fa5df63951a250b7388b0ae79c5e29062a"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.4.0/tinycode-linux-amd64.tar.gz"
      sha256 "ef5f906473713175e3907d9ada71917321a58629337f5618852c369816b8f436"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
