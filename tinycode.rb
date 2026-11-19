class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-darwin-arm64.tar.gz"
      sha256 "6675700ededaa5e46f7a071eb47a3dd14a2ef22581d98067db4e07d19f57c272"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-darwin-amd64.tar.gz"
      sha256 "0caf36c7b8e1baa01384f3c6c8faecd2f35eb8fb5c99478f801ad93265c84d4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-linux-arm64.tar.gz"
      sha256 "cd86895247d3a6f38f52c6c4a0a3a20a91f900f59a1270fda3367d3bef77a3cc"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-linux-amd64.tar.gz"
      sha256 "8bf0cbd8fbee1f13934f1886d2d3c913c0bb761b5941affa8afe0d950625e7cc"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
