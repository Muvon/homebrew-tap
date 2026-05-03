class Octofs < Formula
  desc "Tuned and fully-featured MCP to work with the filesystem in LLM optimized way"
  homepage "https://github.com/muvon/octofs"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c024387eda1c0f1579c7fab704a6fd5dc000f66cc937a245bdb810b885699c14"
    end

    on_arm do
      url "https://github.com/Muvon/octofs/releases/download/#{version}/octofs-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6b4fcf4d5c299e77f53d7d1d42201faf4421bf1fd82e07c0e431163b005e4233"
    end
  end

  def install
    bin.install "octofs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octofs --version")
  end
end
