# typed: strict

class Rech < Formula
  desc "Transcribe recordings with speakers and timings"
  homepage "https://tish.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/rech-0.3.0/rech-0.3.0-macos-arm64.tar.gz"
  version "0.3.0"
  sha256 "c736437e21f73a5cb772309c07fd5f9e284c5bc33db9bdebd6747836e5cc57f2"
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
