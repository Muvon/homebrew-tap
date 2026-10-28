class Octobrain < Formula
  desc "Standalone memory management system for AI context and conversation state"
  homepage "https://github.com/muvon/octobrain"
  version "0.15.0"
  license "Apache-2.0"

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://github.com/Muvon/octobrain/releases/download/#{version}/octobrain-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1d2943f4a11752899aa17ed7c334e4a89b6396ae49c81ab04cff13812a73c6f4"
    end
  end

  def install
    bin.install "octobrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octobrain --version")
  end
end
