class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.1/tinycode-darwin-arm64.tar.gz"
      sha256 "a392784dad2959dbafb493e8512511d466fc826318d74f963e528a68f91baf53"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.1/tinycode-darwin-amd64.tar.gz"
      sha256 "aa3f0cfdc7a65e7c30ebddc2e17197c5ade4c1e39b064ff5b7ab5ee6168d8657"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.1/tinycode-linux-arm64.tar.gz"
      sha256 "30f9e4aa841a383c518eabd35d12e63e5138226e7d2a57f10f8f80d00b2e6058"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.1.1/tinycode-linux-amd64.tar.gz"
      sha256 "ebea17b6ddf9a5e24e323b103592eb8b706a5f6cf702861a63a760131aa21f3f"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
