cask "typetab" do
  version "1.2.0"
  sha256 "f2f412696071f1b64459db752f693cb7eaf39f133cd9c515f6db886fc565ee8d"

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
