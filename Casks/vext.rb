cask "vext" do
  version "1.3.0"
  sha256 "61b5bbed51c7ba19ab28b6c00b5f694f0b75909b0bddd76350a7cb6bd56e2c46"

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
