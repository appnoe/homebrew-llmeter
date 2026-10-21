cask "llmeter" do
  version "1.1.3"
  sha256 "6ef797a49d4739ce88f355d731ea2246c8dc9c5408bcbb365973b8650069e523"

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
