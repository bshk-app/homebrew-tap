cask "murmur" do
  version "1.0"
  sha256 "3e7daa8e44847949822f69653e399fceab2fc3e8eb22c5065aa78d14534530df"

  url "https://github.com/bshk-app/murmur/releases/download/murmur-1.0/Murmur-1.0.zip"
  name "Murmur"
  desc "On-device push-to-talk dictation"
  homepage "https://github.com/bshk-app/murmur"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Murmur.app"

  livecheck do
    url "https://raw.githubusercontent.com/bshk-app/murmur/main/appcast.xml"
    strategy :git
    regex(/^murmur-v?(\d+(?:\.\d+)+)$/i)
  end

  zap trash: [
    "~/Library/Application Support/Murmur",
    "~/Library/Caches/app.bshk.murmur",
    "~/Library/HTTPStorages/app.bshk.murmur",
    "~/Library/Preferences/app.bshk.murmur.plist",
  ]
end
