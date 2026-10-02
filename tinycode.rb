class Tinycode < Formula
  desc "Local-first, model-agnostic AI coding assistant — single binary, no runtime dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "2.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.0.2/tinycode-darwin-arm64.tar.gz"
      sha256 "fbf56d7a2fef33b79ae17e07dce1dbc11a3f1966dee8a08965436f1cef180e28"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.0.2/tinycode-darwin-amd64.tar.gz"
      sha256 "19d14a8998b19c72fc4654bda1e8050ce448002dcb1fbf27c1ac9562e4e34e3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.0.2/tinycode-linux-arm64.tar.gz"
      sha256 "2f7b3f7a88f070ddf9133d48c430b02e330c0ac4961b8ee7f4abb9307c777e9b"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v2.0.2/tinycode-linux-amd64.tar.gz"
      sha256 "1fd472875e293f3daea60e3ae16b52ec871263791d609bb44b995be003b84e85"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match "tinycode", shell_output("#{bin}/tinycode version")
  end
end
