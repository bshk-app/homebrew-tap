cask "containerstack" do
  version "0.4.1"
  sha256 "fe0f3a78f3d73325eace51c93c04afe625b8e7436965f35479394fba4dac19d9"

  url "https://dl.bshk.app/products/containerstack/releases/#{version}/59686655-4e4e-420f-8c7c-48904ad6177f/ContainerStack-#{version}.dmg"
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
