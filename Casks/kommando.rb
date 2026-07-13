cask "kommando" do
  version "0.4.0,9"
  sha256 "4c79a3dbc5ad74160d777edaa83c2eec3b6dc85627d7c34c7b003bbb74a03ef6"

  url "https://github.com/christianalares/kommando/releases/download/downloads/Kommando-#{version.csv.first}.zip"
  name "Kommando"
  desc "Terminal with a built-in AI assistant and MCP server"
  homepage "https://github.com/christianalares/kommando"

  livecheck do
    url "https://raw.githubusercontent.com/christianalares/kommando/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Kommando.app"

  zap trash: [
    "~/Library/Application Support/app.kommando.Kommando",
    "~/Library/Caches/app.kommando.Kommando",
    "~/Library/HTTPStorages/app.kommando.Kommando",
    "~/Library/Preferences/app.kommando.Kommando.plist",
    "~/Library/Saved Application State/app.kommando.Kommando.savedState",
  ]
end
