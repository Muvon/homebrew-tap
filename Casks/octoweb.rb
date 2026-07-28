cask "octoweb" do
  desc "Lightweight macOS browser with AI assistant integration"
  homepage "https://github.com/muvon/octoweb"
  version "0.9.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octoweb/releases/download/#{version}/Octoweb-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4c1b636baaab9d469ea2510f4ddb14cd1f004dad981c7670bd042002995f5ca1"
    end

    on_arm do
      url "https://github.com/muvon/octoweb/releases/download/#{version}/Octoweb-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e8ff8150a63a8dfa029bc197f0a182c9f2078e5c4e2db84ef902574b6a9e7020"
    end
  end

  depends_on formula: "octomind"
  depends_on formula: "octobrain"

  app "Octoweb.app"
end
