cask "murmur" do
  version "0.1.1"
  sha256 "1a2e8227a65749b5fc6c28548d34cc8ff0d77318ebba9b629e097e4a0dc5af58"

  url "https://github.com/bshk-app/murmur/releases/download/murmur-0.1.1/Murmur-0.1.1.zip"
  name "Murmur"
  desc "On-device push-to-talk dictation"
  homepage "https://github.com/bshk-app/murmur"

  auto_updates true
  depends_on macos: :sequoia

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
