cask "timex" do
  version "1.6.0"
  sha256 "3306c507045ede2e4bb8a8c0516ac91a3a6ed020e5a6fd28475baf7a25ffe58d"

  url "https://cdn.gettimex.app/#{version.major}/Timex-#{version}.dmg"
  name "Timex"
  desc "Automatic Mac time tracker, break timer, and lid-down keeper in the menu bar"
  homepage "https://gettimex.app/"

  auto_updates true
  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Timex.app"

  zap trash: [
    "~/Library/Application Support/io.muvon.timex",
    "~/Library/Caches/io.muvon.timex",
    "~/Library/Preferences/io.muvon.timex.plist",
  ]
end
