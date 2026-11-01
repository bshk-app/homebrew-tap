cask "undersong" do
  version "0.2.2"
  sha256 "322179132bf4a8b1da1cd20a8d7ccc579e1f89d17505a43ac0b05ac0751d3471"

  url "https://dl.bshk.app/products/undersong/releases/#{version}/070a8e99-3c3d-4312-ae95-23092cddd6f3/Undersong-#{version}.dmg"
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
