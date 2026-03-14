class Octomind < Formula
  desc "Session-based AI development assistant with MCP tools and multi-provider AI integration"
  homepage "https://octomind.muvon.io"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ffec1aa87e94cf93180d2a5c0e77c089b85f76ee0c48aa4e902138de30f33efe"
    end

    on_arm do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5806dfe0e81673077a8868a6a73aa72075d7d9f61ffa7f2b7a4354938b1634d1"
    end
  end

  def install
    bin.install "octomind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octomind --version")
  end
end
