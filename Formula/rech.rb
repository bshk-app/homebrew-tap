# typed: strict

class Rech < Formula
  desc "Transcribe recordings with speakers and timings"
  homepage "https://tish.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/rech-0.2.0/rech-0.2.0-macos-arm64.tar.gz"
  version "0.2.0"
  sha256 "d0d2e3af6ec5a705ba8c7b3748b2e632d97e1adea1229ea2929b913c1493ccc5"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"rech"
  end

  test do
    assert_match "transcribe", shell_output("#{bin}/rech --help")
  end
end
