cask "undersong" do
  version "0.2.5"
  sha256 "e7b9a0c864dbec91186efabaa9e906f787541a5e9c9ae7e28810a49538c19a6e"

  url "https://dl.bshk.app/products/undersong/releases/#{version}/b05fec8e-20d9-4e18-a17a-1cf0346e038e/Undersong-#{version}.dmg"
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
