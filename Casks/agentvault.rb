cask "agentvault" do
  version "0.3.2"
  sha256 "5fb380cc15d9a81b8ce625f442dde700a06d971ca27f2a1339e4e535e507a2be"

  url "https://github.com/bshk-app/agentvault/releases/download/agentvault-0.3.2/AgentVault-0.3.2.tar.gz"
  name "AgentVault"
  desc "Agent-agnostic secret broker for macOS"
  homepage "https://github.com/bshk-app/agentvault"

  depends_on macos: :ventura

  app "AgentVault.app"
  binary "av"

  zap trash: [
    "~/.config/agentvault",
    "~/Library/Caches/agentvault",
    "~/Library/Logs/agentvault",
    "~/Library/LaunchAgents/app.bshk.agentvault.avd.plist",
  ]
  caveats <<~EOS
    AgentVault runs a per-user background daemon (avd), gated by Touch ID. Provision once:
    
      av setup
    
    That creates your vault and registers avd to start at login (you'll see a macOS "added background item" notice). Manage it any time in System Settings → General → Login Items, or with `av service on` / `av service off`.
  EOS
end
