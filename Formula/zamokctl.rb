class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.2.2/zamokctl-1.2.2-macos-arm64.tar.gz"
  version "1.2.2"
  sha256 "215f784ea9d1a2b4b351f3f035faae04820a79d90c172579946c63c8a8e62be9"
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
