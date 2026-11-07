class Octohub < Formula
  desc "High-performance LLM proxy server with completion chaining and request/response logging"
  homepage "https://github.com/muvon/octohub"
  version "0.16.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octohub/releases/download/#{version}/octohub-#{version}-x86_64-apple-darwin.tar.gz"
      # Filled by .github/workflows/update-octohub.yml on the next release that ships an Intel asset.
      sha256 "1fa025c89c215816286dac4906f3a1e4021c55a951a797bf3aa8f2b2e7328fc9"
    end

    on_arm do
      url "https://github.com/muvon/octohub/releases/download/#{version}/octohub-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e73cccb94a1a1e0dec3de693bf4ec5a3ef612a50011eab306045277c07d897fb"
    end
  end

  def install
    bin.install "octohub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octohub --version")
  end
end
