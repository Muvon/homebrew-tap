cask "timex" do
  version "1.2.0"
  sha256 "0d429fc70d0fa789a5d669bceccdd78390dee71b6f211ee1c28b86b657978461"

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
