# typed: strict

cask "containerstack" do
  version "0.8.0"
  sha256 "3b5bc929bc358bd9feac27432133f21f767e104368bd280bc7b772eb16487590"

  url "https://github.com/bshk-app/ContainerStack/releases/download/v#{version}/ContainerStack-#{version}.dmg"
  name "ContainerStack"
  desc "Native macOS container stack on Apple Container with a Docker-compatible socket"
  homepage "https://containerstack.bshk.app/"

  livecheck do
    url "https://bshk-app.github.io/ContainerStack/appcast/stable.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on formula: "bshk-app/tap/container@1.3.1"
  depends_on macos: :tahoe

  app "ContainerStack.app"

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
