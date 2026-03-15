class Octocode < Formula
  desc "AI-powered code indexer with semantic search, GraphRAG knowledge graphs, and MCP server"
  homepage "https://octocode.muvon.io"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octocode/releases/download/#{version}/octocode-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "914a6922364e4c3020e80c164a84497f4d6eba26bcdb4b1596239a750d2ae9c2"
    end

    on_arm do
      url "https://github.com/muvon/octocode/releases/download/#{version}/octocode-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b7fafe99996b764c0ebb92f67c7b901fa234e40d4dc8d1ba57becdacfa1bb40b"
    end
  end

  def install
    bin.install "octocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octocode --version")
  end
end
