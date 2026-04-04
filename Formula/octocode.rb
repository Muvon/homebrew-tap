class Octocode < Formula
  desc "AI-powered code indexer with semantic search, GraphRAG knowledge graphs, and MCP server"
  homepage "https://octocode.muvon.io"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octocode/releases/download/#{version}/octocode-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1e82e07876d5a05d34d589ee315300e46ed53d6f8cbc6de513417cc7c84b8822"
    end

    on_arm do
      url "https://github.com/muvon/octocode/releases/download/#{version}/octocode-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "75a5006b9231dee1852996c6549d00b88f13dfedb19b32ffec0d67e65a18e03f"
    end
  end

  def install
    bin.install "octocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octocode --version")
  end
end
