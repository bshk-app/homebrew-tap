# typed: strict

cask "containerstack" do
  version "0.8.2"
  sha256 "f4e4b1063d93847c637231edb757e95afdaa4873a798db4844fcd81359ab8a09"

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
