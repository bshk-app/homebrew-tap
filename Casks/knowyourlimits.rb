# typed: strict

cask "knowyourlimits" do
  version "0.2.7"
  sha256 "1dd04304d544279de940b83021b92b7ae900be11c1c53977bd378c336f7e3646"

  url "https://github.com/bshk-app/KnowYourLimits/releases/download/v#{version}/KnowYourLimits-#{version}-macos-arm64.dmg"
  name "KnowYourLimits"
  desc "Claude and Codex usage limits in the menu bar"
  homepage "https://github.com/bshk-app/KnowYourLimits"

  auto_updates true
  depends_on macos: :ventura

  app "KnowYourLimits.app"

  uninstall quit: "dev.knowyourlimits.desktop"

  zap trash: [
    "~/Library/Application Support/dev.knowyourlimits.desktop",
    "~/Library/Caches/dev.knowyourlimits.desktop",
    "~/Library/Preferences/dev.knowyourlimits.desktop.plist",
  ]

  caveats <<~EOS
    This build requires Apple Silicon. Intel Macs are not supported.
  EOS
end
