cask "undersong" do
  version "0.2.11"
  sha256 "45e102c4cf6a3b03999d3b3e802d44b6eff1edba5da584d67e7d98c2c8b310f6"

  url "https://dl.bshk.app/products/undersong/releases/#{version}/2c084ecb-f890-4e7f-b053-bb29fb2363a4/Undersong-#{version}.dmg"
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
