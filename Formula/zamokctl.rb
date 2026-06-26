class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.2.4/zamokctl-1.2.4-macos-arm64.tar.gz"
  version "1.2.4"
  sha256 "8eeee636ccaae25fcb14c26221ef1fc1eec2552712da6457ee1199e7dbe8b76f"
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
