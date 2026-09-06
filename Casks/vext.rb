cask "vext" do
  version "1.5.1"
  sha256 "f9336f49fc297fc141daed3ea997d531858e2054e8d79414e4281a115e055cbb"

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
