class Octomind < Formula
  desc "Session-based AI development assistant with MCP tools and multi-provider AI integration"
  homepage "https://octomind.muvon.io"
  version "0.27.0"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "72bea758f702e254dee2fefd74c47d453e0e5d3d2d3e605420c60af555554eb5"
    end

    on_arm do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cbad1a81458354e8a3a8b76d80be1c5e983bdb85c45fc017a11a296315cde710"
    end
  end

  def install
    bin.install "octomind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octomind --version")
  end
end
