class Yoda < Formula
  desc "Dockerize any project and deploy it to your servers with pure Bash"
  homepage "https://github.com/Muvon/yoda"
  url "https://github.com/Muvon/yoda/archive/refs/tags/2.5.tar.gz"
  sha256 "04ffe6947865b046f64bfec13e0701d3edb3424b39a7bbe017f644869a3ee9e5"
  version "2.5"
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
