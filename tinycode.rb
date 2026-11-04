class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.7.1/tinycode-darwin-arm64.tar.gz"
      sha256 "3fbfddc08e86ae79a442e3897dc7dd665484e6195ee29e11779490fef181cda6"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.7.1/tinycode-darwin-amd64.tar.gz"
      sha256 "85702777f715db257f454386e70a1480b93dca9d7ee1a170eac936787e88a7c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.7.1/tinycode-linux-arm64.tar.gz"
      sha256 "0c178fe282eab954cc0cca3c6035daa4d7d7ac3eb0620601093bffb9ca0375eb"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.7.1/tinycode-linux-amd64.tar.gz"
      sha256 "bff709bdc9480bdf9a3bb4c7a25fda84a6ed3b6930804d4ec2367a5f6599cded"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
