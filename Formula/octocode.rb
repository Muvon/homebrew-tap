class Octocode < Formula
  desc "AI-powered code indexer with semantic search, GraphRAG knowledge graphs, and MCP server"
  homepage "https://octocode.muvon.io"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octocode/releases/download/#{version}/octocode-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1de299a72567caff1c5e3c00d048019e2ef24d0434269740140d50934f3286fe"
    end

    on_arm do
      url "https://github.com/muvon/octocode/releases/download/#{version}/octocode-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fde3e06b0546c464ff533b2d0873092ed07f399ed46c03037b56be8282c994fa"
    end
  end

  def install
    bin.install "octocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octocode --version")
  end
end
