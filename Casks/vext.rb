cask "vext" do
  version "1.7.0"
  sha256 "56ac3a2eb342265688c23420ad2dba6eddaa951be23caaede569e236f82845f2"

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
