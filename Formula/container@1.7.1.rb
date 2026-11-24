# typed: strict

class ContainerAT171 < Formula
  desc "Create and run Linux containers using lightweight virtual machines"
  homepage "https://github.com/beshkenadze/container"
  url "https://github.com/beshkenadze/container/releases/download/1.7.1-bshk.2/container-1.7.1-bshk.2-installer-signed.pkg"
  version "1.7.1-bshk.2"
  sha256 "07e7760441b673df1c6f7f7c99c257c578b12dae3c5defb6c6e02b3a8a16fefe"
  license "Apache-2.0"

  keg_only :versioned_formula

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    system "pkgutil", "--expand-full", cached_download, "expanded"
    prefix.install Dir[buildpath/"expanded/Payload/*"]
  end

  test do
    assert_match "1.7.1", shell_output("#{bin}/container --version")
  end
end
