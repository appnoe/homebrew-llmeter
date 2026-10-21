cask "llmeter" do
  version "1.1.2"
  sha256 "0e36eac7a3a369004736232f1ce4d4c9feba1afc400e32182b599d922ea30314"

  url "https://github.com/appnoe/homebrew-llmeter/releases/download/v#{version}/LLMeter-#{version}.dmg"
  name "LLMeter"
  desc "Menu bar app that shows Claude token usage and estimated costs"
  homepage "https://github.com/appnoe/homebrew-llmeter"

  livecheck do
    url "https://raw.githubusercontent.com/appnoe/homebrew-llmeter/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "LLMeter.app"

  uninstall quit: "com.appnoe.llmeter"

  zap trash: [
    "~/Library/Caches/com.appnoe.llmeter",
    "~/Library/HTTPStorages/com.appnoe.llmeter",
    "~/Library/Preferences/com.appnoe.llmeter.plist",
  ]
end
