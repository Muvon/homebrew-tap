class Octohub < Formula
  desc "High-performance LLM proxy server with completion chaining and request/response logging"
  homepage "https://github.com/muvon/octohub"
  version "0.16.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/muvon/octohub/releases/download/#{version}/octohub-#{version}-x86_64-apple-darwin.tar.gz"
      # Filled by .github/workflows/update-octohub.yml on the next release that ships an Intel asset.
      sha256 "fb581909804522217310c593b2ecc97b46501cee22f7680f24a6a83dc5c119df"
    end

    on_arm do
      url "https://github.com/muvon/octohub/releases/download/#{version}/octohub-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7610ab7ca853084796789ff27bb7d2e24e83d043b435199cf7396ac9e946c051"
    end
  end

  def install
    bin.install "octohub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octohub --version")
  end
end
