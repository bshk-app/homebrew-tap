# typed: strict

class Rech < Formula
  desc "On-device speech recognition for recordings and dictation"
  homepage "https://tish.bshk.app"
  url "https://github.com/bshk-app/homebrew-tap/releases/download/rech-0.4.0/rech-0.4.0-macos-arm64.tar.gz"
  version "0.4.0"
  sha256 "65a058c443239d5103e01b72e6ff642077d6b23cfffcf5d6d66afbd5b06a6c35"
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
