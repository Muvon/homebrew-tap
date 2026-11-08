class Octobrain < Formula
  desc "Standalone memory management system for AI context and conversation state"
  homepage "https://github.com/muvon/octobrain"
  version "0.15.2"
  license "Apache-2.0"

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://github.com/Muvon/octobrain/releases/download/#{version}/octobrain-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d7cd3335aa1eff55caab00f3e3639cd3aa14c9b0379215437bd7ab8a8666dbce"
    end
  end

  def install
    bin.install "octobrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octobrain --version")
  end
end
