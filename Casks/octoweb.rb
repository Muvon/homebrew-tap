cask "octoweb" do
  version "0.19.0"
  sha256 "e2924909a31238d38456512ba7d6c8975d8f4ebae5451fab2d01ed63108459ba"

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
