# typed: strict

class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.6.0/zamokctl-1.6.0-macos-arm64.tar.gz"
  version "1.6.0"
  sha256 "92c85ac93dc5b3750beaf19061ef7c033fb44ebd791026c89f0e4d0209f9ae9f"
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
