cask "undersong" do
  version "0.1.21"
  sha256 "c878997b9c34449d6d7e1b7255f2d82b0a2ea5d1f7d75188d7b4b323a6fd8a4f"

  url "https://dl.bshk.app/products/undersong/releases/#{version}/df7f1664-bca5-45f7-aba9-c6f8401e4800/Undersong-#{version}.dmg"
  name "Undersong"
  desc "Background music written on your Mac"
  homepage "https://undersong.bshk.app"

  livecheck do
    url "https://dl.bshk.app/products/undersong/appcast/stable.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Undersong.app"

  uninstall quit: "app.bshk.undersong.mac"

  zap trash: [
    "~/Library/Application Support/Undersong",
    "~/Library/Caches/app.bshk.undersong.mac",
    "~/Library/HTTPStorages/app.bshk.undersong.mac",
    "~/Library/Preferences/app.bshk.undersong.mac.plist",
    "~/Library/Saved Application State/app.bshk.undersong.mac.savedState",
    "~/Library/WebKit/app.bshk.undersong.mac"
  ]
end
