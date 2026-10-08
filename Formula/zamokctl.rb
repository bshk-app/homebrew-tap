# typed: strict

class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.10.1/zamokctl-1.10.1-macos-arm64.tar.gz"
  version "1.10.1"
  sha256 "f227c8b546f85b3f88ab541190516e6218dadff4f6ad8ff3d12a10d3a58101d2"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "zamokctl"
  end

  test do
    assert_match "zamokctl", shell_output("#{bin}/zamokctl --help")
  end
end
