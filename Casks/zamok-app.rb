cask "zamok-app" do
  version "1.0.14"
  sha256 "8b71ca0a25c29a802bbf73dd56f0d7ee767924f1bc35eb091fac319c6fc4233e"

  url "https://github.com/bshk-app/homebrew-tap/releases/download/zamok-app-1.0.14/ZamokApp-1.0.14.zip", verified: "github.com/bshk-app/homebrew-tap/"
  name "ZamokApp"
  desc "License-aware macOS app"
  homepage "https://zamok01.bshk.app"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "ZamokApp.app"

  livecheck do
    url "https://github.com/bshk-app/homebrew-tap.git"
    strategy :git
    regex(/^zamok-app-v?(\d+(?:\.\d+)+)$/i)
  end

  zap trash: [
    "~/Library/Application Support/ZamokApp",
    "~/Library/Caches/com.zamok.app",
    "~/Library/Preferences/com.zamok.app.plist",
    "~/Library/Application Support/Caches/com.zamok.app",
  ]
end
