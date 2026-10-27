class Octofs < Formula
  desc "Tuned and fully-featured MCP to work with the filesystem in LLM optimized way"
  homepage "https://github.com/muvon/octofs"
  version "0.20.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0ce18eb158d91b53fbdf5c33e37181664704c202338ebc3f3e6d3c5e75707ce1"
    end

    on_arm do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "675b734259a1498a414787f49f321c9e7f101d1a87128c7ead56d6c87e2d07fb"
    end
  end

  def install
    bin.install "octofs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octofs --version")
  end
end
