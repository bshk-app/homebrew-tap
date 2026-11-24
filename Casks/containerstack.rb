# typed: strict

cask "containerstack" do
  version "0.12.0"
  sha256 "8c0ad78228f74554bf919af5c9da44d4a45dbfec7c3cdeb2c19590d170ab8103"

  url "https://github.com/bshk-app/ContainerStack/releases/download/v#{version}/ContainerStack-#{version}.dmg"
  name "ContainerStack"
  desc "Native macOS container stack on Apple Container with a Docker-compatible socket"
  homepage "https://containerstack.bshk.app/"

  livecheck do
    url "https://bshk-app.github.io/ContainerStack/appcast/stable.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on formula: "bshk-app/tap/container@1.7.1"
  depends_on macos: :tahoe

  app "ContainerStack.app"
  binary "#{appdir}/ContainerStack.app/Contents/MacOS/cstack"

  uninstall launchctl: "com.containerstack.runtime",
            quit:      "app.bshk.containerstack"

  zap trash: [
    "~/.containerstack",
    "~/Library/Application Support/ContainerStack",
    "~/Library/LaunchAgents/com.containerstack.runtime.plist",
    "~/Library/Logs/ContainerStack",
    "~/Library/Preferences/app.bshk.containerstack.plist",
  ]
end
