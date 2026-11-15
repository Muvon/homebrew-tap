class Octofs < Formula
  desc "Tuned and fully-featured MCP to work with the filesystem in LLM optimized way"
  homepage "https://github.com/muvon/octofs"
  version "0.25.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "af16e775285f8797dbc329c483d909591d5acbce9d156a2315d8e4150467a5bc"
    end

    on_arm do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e526442c6dc1dd2a9bb3d0cdd16ce15df87a09f81609198796fc6a31307b0d7e"
    end
  end

  def install
    bin.install "octofs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octofs --version")
  end
end
