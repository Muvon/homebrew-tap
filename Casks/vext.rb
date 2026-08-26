cask "vext" do
  version "1.4.0"
  sha256 "3305fafecb74d1dc27f8b370cb703e464488c93ba67cac649bbb1dbbfe8f926e"

  url "https://cdn.getvext.app/#{version.major}/Vext-#{version}.dmg"
  name "Vext"
  desc "Fast local voice-to-text dictation, meeting transcription, and translation"
  homepage "https://getvext.app/"

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Vext.app"

  zap trash: [
    "~/Library/Application Support/io.muvon.vext",
    "~/Library/Caches/io.muvon.vext",
    "~/Library/Preferences/io.muvon.vext.plist",
  ]
end
