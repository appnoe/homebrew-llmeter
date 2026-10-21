cask "llmeter" do
  version "1.1.1"
  sha256 "78b05a323af05bac8fda62a8337390e998a8c24fd1cb61ee8aff6cb21b2205df"

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
