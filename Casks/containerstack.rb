# typed: strict

cask "containerstack" do
  version "0.4.2"
  sha256 "fcbf25792c9c10df81659454960405f6943f675257bad48bc6476c861fef5c50"

  url "https://github.com/bshk-app/ContainerStack/releases/download/v#{version}/ContainerStack-#{version}.dmg"
  name "ContainerStack"
  desc "Native macOS container stack on Apple Container with a Docker-compatible socket"
  homepage "https://containerstack.bshk.app/"

  livecheck do
    url "https://bshk-app.github.io/ContainerStack/appcast/stable.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe
  depends_on formula: "bshk-app/tap/container@1.2.2"

  app "ContainerStack.app"

  uninstall quit: "app.bshk.containerstack"

  zap trash: [
    "~/.containerstack",
    "~/Library/Application Support/ContainerStack",
    "~/Library/LaunchAgents/com.containerstack.runtime.plist",
    "~/Library/Logs/ContainerStack",
    "~/Library/Preferences/app.bshk.containerstack.plist",
  ]
end
