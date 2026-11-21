# typed: strict

cask "agentvault" do
  version "0.3.3"
  sha256 "a97981c63d6ec20d7a25b3077edf88f1f85da15ecedb535cf31586fa018aef40"

  url "https://github.com/bshk-app/agentvault/releases/download/agentvault-#{version}/AgentVault-#{version}.tar.gz"
  name "AgentVault"
  desc "Agent-agnostic secret broker for macOS"
  homepage "https://github.com/bshk-app/agentvault"

  depends_on macos: :ventura

  app "AgentVault.app"
  binary "av"
  binary "age-plugin-av"

  zap trash: [
    "~/.config/agentvault",
    "~/Library/Caches/agentvault",
    "~/Library/LaunchAgents/app.bshk.agentvault.avd.plist",
    "~/Library/Logs/agentvault",
  ]

  caveats <<~EOS
    AgentVault runs a per-user background daemon (avd), gated by Touch ID. Provision once:

      av setup

    That creates your vault and registers avd to start at login (you'll see a macOS "added background item" notice). Manage it any time in System Settings → General → Login Items, or with `av service on` / `av service off`.
  EOS
end
