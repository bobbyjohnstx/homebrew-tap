class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-darwin-arm64.tar.gz"
      sha256 "13376797fbc76490137a4a9e5769a8f26b3cc3df7de42b7c46cb8c31c89078c2"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-darwin-amd64.tar.gz"
      sha256 "a816a92d0e3d7cb76878b1211890734429bc50b9ff6bfc73817fb965f8d44a87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-linux-arm64.tar.gz"
      sha256 "169ebdbe77357d530046ac49d8a948207f5e95f334cbb96c76aee5a0daabcbc2"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.10.0/tinycode-linux-amd64.tar.gz"
      sha256 "b332579aaadbd321f95b04673593a41b478c12644185eab20f9c0a4c489e9b94"
    end
  end

  def install
    # Tarballs extract to a subdirectory (e.g. tinycode-darwin-arm64/tinycode)
    if File.exist?("tinycode")
      bin.install "tinycode"
    else
      Dir.glob("tinycode-*/tinycode").each do |f|
        bin.install f
      end
    end
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
