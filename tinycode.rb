class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.0/tinycode-darwin-arm64.tar.gz"
      sha256 "c5e830d1af37d32cbeb44ba9c9e49c55bd21158a72e6fa32096dd6c855f238ce"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.0/tinycode-darwin-amd64.tar.gz"
      sha256 "d39d79d789de5d133e996fe46a32920fe8bef2748a8b55c7ffe1416ed8873498"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.0/tinycode-linux-arm64.tar.gz"
      sha256 "242aeb267c47d577ed669aad46e2f8abb51ae699051dff686907c03028248a08"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.3.0/tinycode-linux-amd64.tar.gz"
      sha256 "a0ef3d9496387b307a98ec1ff94533a7123c3c120165bc16a8ce4b3e4a8153ae"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
