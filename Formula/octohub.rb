class Octohub < Formula
  desc "High-performance LLM proxy server with completion chaining and request/response logging"
  homepage "https://github.com/muvon/octohub"
  version "0.15.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octohub/releases/download/#{version}/octohub-#{version}-x86_64-apple-darwin.tar.gz"
      # Filled by .github/workflows/update-octohub.yml on the next release that ships an Intel asset.
      sha256 "223f4ad04757ccc2f2dc0dcd2f8d56dd7604cb0898ada6124fa55fa1dd006695"
    end

    on_arm do
      url "https://github.com/muvon/octohub/releases/download/#{version}/octohub-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "74a2a94245beb65066ae9c94dfbb8789c64fb987caf6353a1b29247cd28ef42b"
    end
  end

  def install
    bin.install "octohub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octohub --version")
  end
end
