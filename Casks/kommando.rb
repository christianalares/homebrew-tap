cask "kommando" do
  version "0.3.3,8"
  sha256 "617b84bb05e7a95ef172613fa0891fa90bc4f0357c430b2033a4dd6f26b25a49"

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
