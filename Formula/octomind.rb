class Octomind < Formula
  desc "Session-based AI development assistant with MCP tools and multi-provider AI integration"
  homepage "https://octomind.run/product/octomind/"
  version "0.73.1"
  license "Apache-2.0"

  depends_on "git"

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b83c3dfa974c91cc7fc09c611501fa636d276dca5c48fefdd5d43644ab4ecd37"
    end
  end

  def install
    bin.install "octomind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octomind --version")
  end
end
