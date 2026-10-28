class Octomind < Formula
  desc "Session-based AI development assistant with MCP tools and multi-provider AI integration"
  homepage "https://octomind.run/product/octomind/"
  version "0.66.0"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9f1fa128c51c8506a28e0b57b344d2bce85d4946aa03b479e1d6580450b1195f"
    end

    on_arm do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f2d254997eef78094529dbb82e05d50ce3b928da55014e5c6494843a766ab5d7"
    end
  end

  def install
    bin.install "octomind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octomind --version")
  end
end
