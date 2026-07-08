class Tinycode < Formula
  desc "Local-LLM-first AI coding assistant — runs air-gapped with zero cloud dependencies"
  homepage "https://github.com/bobbyjohnstx/tinycode"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v0.16.0/tinycode-darwin-arm64.zip"
      sha256 "176f831b9ef5a01544f6b75cb3717465eefe6b80e9de57da1d7b288f109fd7e8"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v0.16.0/tinycode-darwin-x64.zip"
      sha256 "079100b62689ad7114e42e843c0d92eaaabd15dc955031e8d611ab1fdb4612bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v0.16.0/tinycode-linux-arm64.tar.gz"
      sha256 "b2bba4feecda650af0dbe9a12f2e266fa688d0495e94632a4c7514f40fab6cde"
    else
      url "https://github.com/bobbyjohnstx/tinycode/releases/download/v0.16.0/tinycode-linux-x64.tar.gz"
      sha256 "8fcc7f9877ccc95f3df09451a9051ddeeac1d78ebaf46f7e2ddd6f1bc43e9adb"
    end
  end

  def install
    bin.install "tinycode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinycode --version")
  end
end
