cask "octoweb" do
  desc "Lightweight macOS browser with AI assistant integration"
  homepage "https://github.com/muvon/octoweb"
  version "0.13.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octoweb/releases/download/#{version}/Octoweb-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b5f7ea8d879892020fb0fb472f28f96d883819aaaebd52c0a1f0f201cca41af1"
    end

    on_arm do
      url "https://github.com/muvon/octoweb/releases/download/#{version}/Octoweb-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "57814da1317787e7526f9c8bff6f1ef1a90d79711e82457e69dce5141b66ba25"
    end
  end

  depends_on formula: "octomind"
  depends_on formula: "octobrain"

  app "Octoweb.app"
end
