cask "llmeter" do
  version "1.1.4"
  sha256 "ffcad40e6a9b2735fdb5c6335c09f43a6c953b1a9d8b27f9075fe25597cc5df2"

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
