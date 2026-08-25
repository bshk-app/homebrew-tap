# typed: strict

cask "murmur" do
  version "0.3.0"
  sha256 "8e8948643f1fceb70c4936836a02e9e1a8fd811f03c1bb95dae38611a8f8e6bb"

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
