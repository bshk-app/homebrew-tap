class ContainerAT131 < Formula
  desc "Create and run Linux containers using lightweight virtual machines"
  homepage "https://apple.github.io/container/documentation/"
  url "https://github.com/apple/container/releases/download/1.3.1/container-1.3.1-installer-signed.pkg"
  sha256 "a7c1b9d7927d30875f2f6c7bd1d0cb06c2daa6ca57ce9e90a5144e898fdf54a8"
  license "Apache-2.0"

  keg_only :versioned_formula

  depends_on arch: :arm64
  # 1.2.2 allowed Sequoia. Upstream's README at this tag says container is supported on macOS 26
  # only, since it leans on virtualization and networking changes that shipped there.
  depends_on macos: :tahoe

  def install
    system "pkgutil", "--expand-full", cached_download, "expanded"
    prefix.install Dir[buildpath/"expanded/Payload/*"]
  end

  test do
    assert_match "1.3.1", shell_output("#{bin}/container --version")
  end
end
