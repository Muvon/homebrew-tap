class Yoda < Formula
  desc "Dockerize any project and deploy it to your servers with pure Bash"
  homepage "https://github.com/Muvon/yoda"
  url "https://github.com/Muvon/yoda/archive/refs/tags/2.4.tar.gz"
  sha256 "dd435caf04b82fc426a4b741a2533af65cdb26fd8dcc9e7497cfaf29a24253a7"
  version "2.4"

  depends_on "bash"
  depends_on "git"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"yoda"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yoda version")
  end
end
