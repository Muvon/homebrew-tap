class Octobrain < Formula
  desc "Standalone memory management system for AI context and conversation state"
  homepage "https://github.com/muvon/octobrain"
  version "0.9.4"
  license "Apache-2.0"

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://github.com/Muvon/octobrain/releases/download/#{version}/octobrain-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "373b37056b532dc7e2c0c1a564e981cee6758221ac5a291b896de89a90175dbc"
    end
  end

  def install
    bin.install "octobrain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octobrain --version")
  end
end
