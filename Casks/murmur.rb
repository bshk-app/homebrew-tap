cask "murmur" do
  version "0.1.0"
  sha256 "e733fad0428b90e781942233788e9d879371b44cec355a8ae6da168eafbe587c"

  url "https://github.com/bshk-app/murmur/releases/download/murmur-0.1.0/Murmur-0.1.0.zip"
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
