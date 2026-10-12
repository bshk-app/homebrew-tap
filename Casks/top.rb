cask "top" do
  version "0.1.0"
  sha256 "e678b8aaf6afc8cd2712bbadcc265897ed672252761c3b89aa6647a26448e527"

  url "https://github.com/bshk-app/top/releases/download/v#{version}/Top-#{version}-macos-arm64.dmg"
  name "Top"
  desc "Apple Silicon system monitor"
  homepage "https://github.com/bshk-app/top"

  livecheck do
    url "https://raw.githubusercontent.com/bshk-app/top/updates/appcast-stable.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Top.app"

  uninstall quit: "app.bshk.top"

  zap trash: [
    "~/Library/Application Support/Top",
    "~/Library/Caches/app.bshk.top",
    "~/Library/HTTPStorages/app.bshk.top",
    "~/Library/Preferences/app.bshk.top.plist",
  ]
end
