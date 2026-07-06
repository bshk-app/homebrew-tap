class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.3.0/zamokctl-1.3.0-macos-arm64.tar.gz"
  version "1.3.0"
  sha256 "1c86f199844e8faacdf755f679180572a4f4c6d487ed25b2b10e71893f5838d5"
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
