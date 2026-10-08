# typed: strict

class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.10.0/zamokctl-1.10.0-macos-arm64.tar.gz"
  version "1.10.0"
  sha256 "b691069165bf9ce5e26d22db2d50cebc1a12d2161866d1490dcf80dff1068fec"
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
