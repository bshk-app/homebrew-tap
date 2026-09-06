# typed: strict

class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.9.0/zamokctl-1.9.0-macos-arm64.tar.gz"
  version "1.9.0"
  sha256 "c869dff8f3bc44f65e1fbd921851995abe5aa09ae712298b1ba3d2cb1ac44cfe"
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
