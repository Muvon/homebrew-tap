class Octoweb < Cask
  desc "Lightweight macOS browser with AI assistant integration"
  homepage "https://github.com/muvon/octoweb"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octoweb/releases/download/#{version}/Octoweb-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "use_real_sha256_after_first_release"
    end

    on_arm do
      url "https://github.com/muvon/octoweb/releases/download/#{version}/Octoweb-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "use_real_sha256_after_first_release"
    end
  end

  depends_on formula: "octomind"
  depends_on formula: "octobrain"

  app "Octoweb.app"
end
