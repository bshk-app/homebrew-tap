# typed: strict

class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.7.0/zamokctl-1.7.0-macos-arm64.tar.gz"
  version "1.7.0"
  sha256 "46c2ce296c0b94ae3b4ddc1d587f7ab6e2644afa94ea5209a79c79a68451a396"
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
