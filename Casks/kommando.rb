cask "kommando" do
  version "0.3.2,7"
  sha256 "4df04cfa974505e5416524b658d263262043b928160bbe8f1196db12db9f0dc5"

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
