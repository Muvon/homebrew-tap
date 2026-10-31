class Octohub < Formula
  desc "High-performance LLM proxy server with completion chaining and request/response logging"
  homepage "https://github.com/muvon/octohub"
  version "0.16.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octohub/releases/download/#{version}/octohub-#{version}-x86_64-apple-darwin.tar.gz"
      # Filled by .github/workflows/update-octohub.yml on the next release that ships an Intel asset.
      sha256 "5eb10e39ce2811e2ecf2008e2e8c2b9b9541c9aa40e4a418782b57bcd93de5b6"
    end

    on_arm do
      url "https://github.com/muvon/octohub/releases/download/#{version}/octohub-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c5323feba36323b38b75f234c80f8413d7a1400995e1635d1611813ccb6bfc2c"
    end
  end

  def install
    bin.install "octohub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octohub --version")
  end
end
