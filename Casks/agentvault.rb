cask "agentvault" do
  version "0.1.0"
  sha256 "63620000409478818fdd6d9bb103168040cc7f5566a1969cb6e7f977ddbce388"

  url "https://github.com/bshk-app/agentvault/releases/download/agentvault-0.1.0/AgentVault-0.1.0.tar.gz"
  name "AgentVault"
  desc "Agent-agnostic secret broker for macOS"
  homepage "https://github.com/bshk-app/agentvault"

  depends_on macos: :big_sur

  app "AgentVault.app"
  binary "av"

  zap trash: [
    "~/.config/agentvault",
    "~/Library/Caches/agentvault",
    "~/Library/Logs/agentvault",
    "~/Library/LaunchAgents/app.bshk.agentvault.avd.plist",
  ]
  caveats <<~EOS
    AgentVault runs a per-user background daemon (avd) that holds your secrets and is gated by Touch ID. Start it (and have it relaunch at login) with:
    
      brew services start agentvault
    
    Then provision the vault once: `av setup`. Unlocking presents a Touch ID prompt, so avd must run in your GUI session — `brew services` handles that for you.
  EOS
end
