# typed: strict

cask "murmur" do
  version "0.3.1"
  sha256 "6aa6438970e72c796463d7fa289b094879943b283a77b9b08c1b5329710e3465"

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
