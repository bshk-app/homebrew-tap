cask "containerstack" do
  version "0.1.0"
  sha256 "4ba5ad70386df09959292270013e0f4f91b0e33563f3faf5aed264922e356605"

  url "https://dl.bshk.app/products/containerstack/releases/0.1.0/389d0bcb-ad72-4a1d-93fa-79c583578914/ContainerStack-0.1.0.dmg"
  name "ContainerStack"
  desc "Native macOS container stack on Apple Container with a Docker-compatible socket"
  homepage "https://containerstack.bshk.app"

  livecheck do
    url "https://dl.bshk.app/products/containerstack/appcast/stable.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "ContainerStack.app"

  uninstall quit: "app.bshk.containerstack"

  zap trash: [
    "~/Library/Application Support/ContainerStack",
    "~/Library/Logs/ContainerStack",
    "~/Library/Preferences/app.bshk.containerstack.plist",
    "~/Library/LaunchAgents/com.containerstack.runtime.plist",
    "~/.socktainer"
  ]
end
