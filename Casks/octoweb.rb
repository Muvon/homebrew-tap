cask "octoweb" do
  version "0.20.0"
  sha256 "5b7644302aaf50e207163caef92026fb6f5b5e98c2fb8b8a8d135b019b6b7d3a"

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
