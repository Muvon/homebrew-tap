class Octofs < Formula
  desc "Tuned and fully-featured MCP to work with the filesystem in LLM optimized way"
  homepage "https://github.com/muvon/octofs"
  version "0.10.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "810bc95014cc50ea668980a8ecc035756469b4d2e2652724f99ece2e9dd239d3"
    end

    on_arm do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cc45833dbd06cdb18b9b730389c862c725378f5adee034678b256feb468d493f"
    end
  end

  def install
    bin.install "octofs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octofs --version")
  end
end
