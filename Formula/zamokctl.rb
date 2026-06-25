class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.2.2/zamokctl-1.2.2-macos-arm64.tar.gz"
  version "1.2.2"
  sha256 "207bacae19261f5dc03f4489d3aa2bb83c47ab1655301c67ca324703e076d22b"
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
