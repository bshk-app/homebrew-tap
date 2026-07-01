cask "agentvault" do
  version "0.3.0"
  sha256 "56b6d26d578f84ea81140db4a031f7328d2d85cb9d83ba24189d91d0a831fb93"

  url "https://github.com/bshk-app/agentvault/releases/download/agentvault-0.3.0/AgentVault-0.3.0.tar.gz"
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
