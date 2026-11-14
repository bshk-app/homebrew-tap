# typed: strict

class ContainerAT171 < Formula
  desc "Create and run Linux containers using lightweight virtual machines"
  homepage "https://github.com/beshkenadze/container"
  url "https://github.com/beshkenadze/container/releases/download/1.7.1-bshk.1/container-1.7.1-bshk.1-installer-signed.pkg"
  version "1.7.1-bshk.1"
  sha256 "2ae90b32e28a439044e28b175347514887e8f909bbc6250665081d8e217efd67"
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
