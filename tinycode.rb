class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.8.1/tinycode-darwin-arm64.tar.gz"
      sha256 "e574fbe4467c956af62fc15216d27aff59f0df1ab1a7b8318bb8e431c1b6dd4f"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.8.1/tinycode-darwin-amd64.tar.gz"
      sha256 "e0af67907f97824414d6137b427fc92fd71e0d70b329f46d303ca9c003638439"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.8.1/tinycode-linux-arm64.tar.gz"
      sha256 "e61791f62f62f4165d7d080bda910078ff620f3a1e5960c5e727e31f96788c45"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.8.1/tinycode-linux-amd64.tar.gz"
      sha256 "b8720c2ec5e213e9f424c3cc2508a7254b2648f565530de0fd6f4e7f92f7688f"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
