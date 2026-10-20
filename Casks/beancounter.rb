cask "beancounter" do
  version "1.0.0"
  sha256 "b125267911d18143d50d4123a520855e5b246fc3b2b850659d6bcafb525bbfa9"

  url "https://github.com/appnoe/homebrew-beancounter/releases/download/v#{version}/BeanCounter-#{version}.dmg"
  name "BeanCounter"
  desc "Menu bar app that shows Claude token usage and estimated costs"
  homepage "https://github.com/appnoe/homebrew-beancounter"

  livecheck do
    url "https://raw.githubusercontent.com/appnoe/homebrew-beancounter/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "BeanCounter.app"

  uninstall quit: "com.appnoe.beancounter"

  zap trash: [
    "~/Library/Caches/com.appnoe.beancounter",
    "~/Library/HTTPStorages/com.appnoe.beancounter",
    "~/Library/Preferences/com.appnoe.beancounter.plist",
  ]
end
