cask "kommando" do
  version "0.5.0,10"
  sha256 "54cf0d68e8b2e17780a50c73c02f391ed4c4f295d04b5dc53a4b53ca0a444e00"

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
