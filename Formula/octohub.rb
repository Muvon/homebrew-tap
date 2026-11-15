class Octohub < Formula
  desc "High-performance LLM proxy server with completion chaining and request/response logging"
  homepage "https://github.com/muvon/octohub"
  version "0.16.10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octohub/releases/download/#{version}/octohub-#{version}-x86_64-apple-darwin.tar.gz"
      # Filled by .github/workflows/update-octohub.yml on the next release that ships an Intel asset.
      sha256 "420715468bafe44da4636a8ff414a592736c31b3921f600c26cb75d86c5e5742"
    end

    on_arm do
      url "https://github.com/muvon/octohub/releases/download/#{version}/octohub-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "91afe633068719feb32ce040b0c3a04a69b560bd35808c7e04d1a9c0996d0507"
    end
  end

  def install
    bin.install "octohub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octohub --version")
  end
end
