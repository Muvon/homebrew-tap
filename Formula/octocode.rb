class Octocode < Formula
  desc "AI-powered code indexer with semantic search, GraphRAG knowledge graphs, and MCP server"
  homepage "https://octocode.muvon.io"
  version "0.12.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octocode/releases/download/#{version}/octocode-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "221a1eb68a1d0db5e792b477f561512480761d4802527e7d807d81032c3d08d5"
    end

    on_arm do
      url "https://github.com/muvon/octocode/releases/download/#{version}/octocode-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cfe6847cecaa5eaf90300ea509128e4d58fbc798a617aaf022b443b5b9d8db5e"
    end
  end

  def install
    bin.install "octocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octocode --version")
  end
end
