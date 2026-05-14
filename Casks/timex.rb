cask "timex" do
  version "1.0.0"
  sha256 "d759756683089f5ee2972e17a5b1459784434fa5d7666fa97ea517fa54a0de8e"

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
