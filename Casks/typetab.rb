cask "typetab" do
  version "1.0.0"
  sha256 "8aa7e9245f5d94341a688e397af5e9e1d7d0365b8f58468adef28562928ec8bd"

  url "https://cdn.typetab.app/#{version.major}/TypeTab-#{version}.dmg"
  name "TypeTab"
  desc "On-device autocomplete with LLM-powered ghost text and spelling correction"
  homepage "https://typetab.app/"

  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "typetab.app"

  zap trash: [
    "~/Library/Application Support/io.muvon.typetab",
    "~/Library/Caches/io.muvon.typetab",
    "~/Library/Preferences/io.muvon.typetab.plist",
  ]
end
