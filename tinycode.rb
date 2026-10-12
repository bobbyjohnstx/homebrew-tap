class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.1/tinycode-darwin-arm64.tar.gz"
      sha256 "85d1e54d03f7b99de6d3f3e045d621f6e2e8b4df3b9192cb6fff91207654a251"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.1/tinycode-darwin-amd64.tar.gz"
      sha256 "8efb320e1c8494968c814792aeae07a6026e27ca7ccdc2604f776c83d6c8dda7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.1/tinycode-linux-arm64.tar.gz"
      sha256 "cab94b0617b547d1b427447dbce3900212dd7b91bd68f3d74f81eb5a43135f11"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.1/tinycode-linux-amd64.tar.gz"
      sha256 "a28e9e30dbc6f96d9269b9ea3b89fd7318a37cc24d5af3842eb3a865dd799d57"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
