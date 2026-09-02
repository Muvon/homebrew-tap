class Octobrain < Formula
  desc "Standalone memory management system for AI context and conversation state"
  homepage "https://github.com/muvon/octobrain"
  version "0.12.2"
  license "Apache-2.0"

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://github.com/Muvon/octobrain/releases/download/#{version}/octobrain-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fefd251b7c2d43ce0c3e5a6c02850c0a7d8c951e1af7cb57530ea19522db87d2"
    end
  end

  def install
    bin.install "octobrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octobrain --version")
  end
end
