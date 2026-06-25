class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.2.3/zamokctl-1.2.3-macos-arm64.tar.gz"
  version "1.2.3"
  sha256 "f3a886c5f8f2620d2413ae0f40990b6b8fcda4272d4b3c3287dc32b629a2a06f"
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
