class Octobrain < Formula
  desc "Standalone memory management system for AI context and conversation state"
  homepage "https://github.com/muvon/octobrain"
  version "0.13.0"
  license "Apache-2.0"

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://github.com/Muvon/octobrain/releases/download/#{version}/octobrain-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9161a7fe71a047e2a6a3df6d8a587dcae86bb41481c0573104fdcf348c200fad"
    end
  end

  def install
    bin.install "octobrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octobrain --version")
  end
end
