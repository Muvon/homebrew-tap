class Yoda < Formula
  desc "Dockerize any project and deploy it to your servers with pure Bash"
  homepage "https://github.com/Muvon/yoda"
  url "https://github.com/Muvon/yoda/archive/refs/tags/2.6.0.tar.gz"
  sha256 "54868fc4b7aa21026ac409adecca6ed4f04f31475e0364662f108322577a6a83"
  version "2.6.0"
  head "https://github.com/Muvon/yoda.git"

  depends_on "bash"
  depends_on "git"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"yoda"
  end

  test do
    output = shell_output("#{bin}/yoda version")
    assert_match "Yoda version:", output
    assert_match version.to_s, output unless build.head?
  end
end
