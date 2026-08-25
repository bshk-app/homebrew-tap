class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.4.0/zamokctl-1.4.0-macos-arm64.tar.gz"
  version "1.4.0"
  sha256 "39a1b0be7c8d58de9c93f1b7a46107c804e537c940db559a735103429c35e4bb"
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
