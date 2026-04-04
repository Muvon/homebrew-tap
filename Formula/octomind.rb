class Octomind < Formula
  desc "Session-based AI development assistant with MCP tools and multi-provider AI integration"
  homepage "https://octomind.muvon.io"
  version "0.23.1"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7fb367f313e6aa97e656bd0ed2bba7d5ca7740d4f1f7444402eff78c35ab0deb"
    end

    on_arm do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f1e52a5595aa8a7c926b610029edb3f91cd21233b0558a01e06a6e790bdd9b08"
    end
  end

  def install
    bin.install "octomind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octomind --version")
  end
end
