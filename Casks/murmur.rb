# typed: strict

cask "murmur" do
  version "0.7.0"
  sha256 "bcdd40a7ec31f79f873dffb98f279885af83a1f9a283dec711b59b3d9bd2bd3a"

  url "https://github.com/bshk-app/murmator/releases/download/murmur-v#{version}/Murmator-#{version}.dmg"
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
