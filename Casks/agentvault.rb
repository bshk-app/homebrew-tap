cask "agentvault" do
  version "0.3.1"
  sha256 "fe8f1e1c7c77bc2a1840b9afda6ddab5ffbc3301ff783fbcac16c72f59e02720"

  url "https://github.com/bshk-app/agentvault/releases/download/agentvault-0.3.1/AgentVault-0.3.1.tar.gz"
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
