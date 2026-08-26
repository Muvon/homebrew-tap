cask "timex" do
  version "1.3.0"
  sha256 "a076b5a5d9370e4853a62fb2fc52e427660a543c3732fbc48e5413b60c9103c5"

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
