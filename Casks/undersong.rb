cask "undersong" do
  version "0.2.1"
  sha256 "e85124ed782682024eed1d7eca160c81ec63119c4cc7f814a8ecf341f716400d"

  url "https://dl.bshk.app/products/undersong/releases/#{version}/0e4eae74-e23d-41bc-a950-73692ab3b196/Undersong-#{version}.dmg"
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
