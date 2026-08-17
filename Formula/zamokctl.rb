class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.3.1/zamokctl-1.3.1-macos-arm64.tar.gz"
  version "1.3.1"
  sha256 "ed110c8e0f6ef54408e6442bca63bf08c34f14e8c47f1795620aaea8014c16af"
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
