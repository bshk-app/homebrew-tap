class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.2.5/zamokctl-1.2.5-macos-arm64.tar.gz"
  version "1.2.5"
  sha256 "e791c21934059830c6e139ac3bd6c03768a7b2cabe5ebc558f3dd6a0bf39f4e2"
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
