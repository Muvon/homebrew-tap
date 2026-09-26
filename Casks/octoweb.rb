cask "octoweb" do
  desc "Lightweight macOS browser with AI assistant integration"
  homepage "https://github.com/muvon/octoweb"
  version "0.16.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octoweb/releases/download/#{version}/Octoweb-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3910ec32ec1b60378279d278d51fffa0f7b340eaeb502fcb1399082f8108d8c7"
    end

    on_arm do
      url "https://github.com/muvon/octoweb/releases/download/#{version}/Octoweb-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "63164674c0f1acfd39137c024a779b24cc69e79a20a0839ea394f28549a63eb5"
    end
  end

  depends_on formula: "octomind"
  depends_on formula: "octobrain"

  app "Octoweb.app"
end
