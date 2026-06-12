cask "typetab" do
  version "1.1.0"
  sha256 "d36a6453139ef22e73eb2d28433860df45052ba3e115e40ec27cf7190dd61c31"

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
