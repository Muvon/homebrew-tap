class Octomind < Formula
  desc "Session-based AI development assistant with MCP tools and multi-provider AI integration"
  homepage "https://octomind.run/product/octomind/"
  version "0.38.2"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "596effe6d85edf40e65e0cdb8396f27f95b6df1942b4d0c5fbba90cc2e2dd562"
    end

    on_arm do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "93d2416873fa29fb17603922db741b18a867142a51a4aaaa6400a3477b311303"
    end
  end

  def install
    bin.install "octomind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octomind --version")
  end
end
