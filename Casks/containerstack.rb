cask "containerstack" do
  version "0.1.0"
  sha256 "be0ed1d04297ca0b75fa5cd7723731e77b8fb23e074be07849e749cb91a48ceb"

  url "https://github.com/bshk-app/ContainerStack/releases/download/v#{version}/ContainerStack-#{version}.dmg"
  name "ContainerStack"
  desc "Native macOS container stack on Apple Container with a Docker-compatible socket"
  homepage "https://containerstack.bshk.app"

  livecheck do
    url "https://dl.bshk.app/products/containerstack/appcast/stable.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe
  depends_on formula: "bshk-app/tap/container@1.2.2"

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
