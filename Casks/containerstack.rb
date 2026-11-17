# typed: strict

cask "containerstack" do
  version "0.10.0"
  sha256 "1ff8ff4dfe67199604181bb94f5c8e83baa4dc7d7691283254d40a7c641c0a1f"

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
