# typed: strict

class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.5.0/zamokctl-1.5.0-macos-arm64.tar.gz"
  version "1.5.0"
  sha256 "f38559071256aaa7ca4925d333b2ef3bafbff78aefa84d14a642533102c324bf"
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
