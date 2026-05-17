cask "timex" do
  version "1.1.0"
  sha256 "704aaa4f5dee67fe2616f6d3f4bf5aac956bf5453ee6884f80cacf20cb93e80e"

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
