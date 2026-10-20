# typed: strict

cask "knowyourlimits" do
  version "0.2.8"
  sha256 "ed7953e45e28c5f66e843051a909e887c3355319f2b7994e3cfb73308accec9f"

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
