class Octocode < Formula
  desc "AI-powered code indexer with semantic search, GraphRAG knowledge graphs, and MCP server"
  homepage "https://octomind.run/product/octocode/"
  version "0.26.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octocode/releases/download/#{version}/octocode-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1961b57aee45bd36130d4cf475f291b41230b51736ae1153c8011adcbafc5ea4"
    end

    on_arm do
      url "https://github.com/muvon/octocode/releases/download/#{version}/octocode-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2f41cd646c3bc25bca36b697e66506d6834795913416f15c841db922113ba7eb"
    end
  end

  def install
    bin.install "octocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octocode --version")
  end
end
