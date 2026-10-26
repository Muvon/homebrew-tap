class Octomind < Formula
  desc "Session-based AI development assistant with MCP tools and multi-provider AI integration"
  homepage "https://octomind.run/product/octomind/"
  version "0.64.0"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "eef34984adde3ec2824182bb66009e0e0d182d684959cf2555965f8eda39eab8"
    end

    on_arm do
      url "https://github.com/muvon/octomind/releases/download/#{version}/octomind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "68d25e617cd792c1f3f32a05cba43128bde8347c0237032be892caf5debc2682"
    end
  end

  def install
    bin.install "octomind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octomind --version")
  end
end
