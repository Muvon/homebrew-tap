cask "octoweb" do
  desc "Lightweight macOS browser with AI assistant integration"
  homepage "https://github.com/muvon/octoweb"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octoweb/releases/download/#{version}/Octoweb-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ae8458b1bc1b51dc132b3fb9aaadd559ca5d5be1f759f0409eceb0d2aa4794a1"
    end

    on_arm do
      url "https://github.com/muvon/octoweb/releases/download/#{version}/Octoweb-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "df0c0621fc69293f1a1c38ab26ad5db5a2cdc8262c763de4ca1f158578cc1bda"
    end
  end

  depends_on formula: "octomind"
  depends_on formula: "octobrain"

  app "Octoweb.app"
end
