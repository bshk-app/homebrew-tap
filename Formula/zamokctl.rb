# typed: strict

class Zamokctl < Formula
  desc "Drive the Zamok macOS release pipeline from the terminal"
  homepage "https://zamok01.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamokctl-1.4.1/zamokctl-1.4.1-macos-arm64.tar.gz"
  version "1.4.1"
  sha256 "9da4fa6b3001b31c0d72c0f1e649fc1849ef8b0a03c8050a9b80eaf4c84db671"
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
