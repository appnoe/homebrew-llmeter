cask "llmeter" do
  version "1.1.5"
  sha256 "784d73d73e2d5b3ff3b34b5e5c097118b7ff065cd851a8ac6831771b492c941e"

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
