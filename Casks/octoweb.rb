cask "octoweb" do
  version "0.22.0"
  sha256 "f7e29d26ce85f332577b9cc685a4955700f53ad286df2f9fe45967bfec7418c0"

  url "https://cdn.octoweb.xyz/#{version.major}/Octoweb-#{version}.dmg"
  name "Octoweb"
  desc "Lightweight browser with AI assistant integration"
  homepage "https://octoweb.xyz/"

  auto_updates true
  depends_on arch: :arm64
  depends_on formula: "octobrain"
  depends_on formula: "octomind"
  depends_on macos: ">= :ventura"

  app "Octoweb.app"

  zap trash: [
    "~/.local/share/octoweb",
    "~/.local/share/octoweb-workspaces",
    "~/Library/Application Support/octoweb",
    "~/Library/Caches/io.muvon.octoweb",
    "~/Library/Preferences/io.muvon.octoweb.plist",
    "~/Library/WebKit/io.muvon.octoweb",
  ]
end
