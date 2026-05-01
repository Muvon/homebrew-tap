cask "vext" do
  version "1.1.0"
  sha256 "8a0672c7b62d366c36c0b353fd29800bb2f0e3c413bf8e62df26d737f62965b0"

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
