# typed: strict

cask "murmur" do
  version "0.2.0"
  sha256 "38077be26de3d0d583f467bdbee2fafa7e1b964eaa7cd4c63ef4d5a1324479cb"

  url "https://github.com/bshk-app/murmur/releases/download/murmur-v#{version}/Murmur-#{version}.dmg"
  name "Murmur"
  desc "On-device dictation and live captions"
  homepage "https://github.com/bshk-app/murmur"

  livecheck do
    url "https://raw.githubusercontent.com/bshk-app/murmur/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Murmur.app"

  uninstall quit: "app.bshk.murmur"

  zap trash: [
    "~/Library/Application Support/Murmur",
    "~/Library/Caches/app.bshk.murmur",
    "~/Library/HTTPStorages/app.bshk.murmur",
    "~/Library/Preferences/app.bshk.murmur.plist",
  ]
end
