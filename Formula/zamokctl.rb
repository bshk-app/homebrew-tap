# typed: strict

class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.8.0/zamokctl-1.8.0-macos-arm64.tar.gz"
  version "1.8.0"
  sha256 "610f12787bf2eb8d49dc0e6355e2e61fbc111b0c1fbebd94c0355dd51daf6cdd"
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
