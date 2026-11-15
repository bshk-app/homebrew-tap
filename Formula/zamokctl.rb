# typed: strict

class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.11.0/zamokctl-1.11.0-macos-arm64.tar.gz"
  version "1.11.0"
  sha256 "dd8eadea352d97f3ccea71ac30b254b98263bf1926b4c450ce8086aa5593b79f"
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
