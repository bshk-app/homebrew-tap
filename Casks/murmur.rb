# typed: strict

cask "murmur" do
  version "0.6.0"
  sha256 "740842e04581282c2a6d244ec9bf41adc82808f7a4a3301a8cbde349631a4081"

  url "https://github.com/bshk-app/murmur/releases/download/murmur-v#{version}/Murmator-#{version}.dmg"
  name "Murmator"
  desc "On-device dictation and live captions"
  homepage "https://github.com/bshk-app/murmur"

  livecheck do
    url "https://raw.githubusercontent.com/bshk-app/murmur/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Murmator.app"

  uninstall quit: "app.bshk.murmur"

  zap trash: [
    "~/Library/Application Support/Murmur",
    "~/Library/Caches/app.bshk.murmur",
    "~/Library/HTTPStorages/app.bshk.murmur",
    "~/Library/Preferences/app.bshk.murmur.plist",
  ]
end
