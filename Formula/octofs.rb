class Octofs < Formula
  desc "Tuned and fully-featured MCP to work with the filesystem in LLM optimized way"
  homepage "https://github.com/muvon/octofs"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a78ab73570ec3f349719ad1ef51ede5c34087e5c2c462ea9c890791e9a362110"
    end

    on_arm do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b0254c900ba329219e6cc7cd5ccea5f13e5bf2a17acadbf8888b4ec0162bedde"
    end
  end

  def install
    bin.install "octofs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octofs --version")
  end
end
