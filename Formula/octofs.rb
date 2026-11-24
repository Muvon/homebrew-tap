class Octofs < Formula
  desc "Tuned and fully-featured MCP to work with the filesystem in LLM optimized way"
  homepage "https://github.com/muvon/octofs"
  version "0.27.1"
  license "Apache-2.0"

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5a6004a21faece8bb2639a14ecf737a58a0253638cdf28204490cc9a682402c7"
    end
  end

  def install
    bin.install "octofs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octofs --version")
  end
end
