# Written by .github/workflows/update-besydr.yml at each Besydr release.
# Change the template in that workflow, not this file.
class Besydr < Formula
  desc "Supervisor and memory that runs beside a coding agent"
  homepage "https://besydr.com"
  version "0.3.2"
  license :cannot_represent

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f765e7d819873feca1f0b6a1175b08d06ca8785d546636b760079021f4096e27"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "94c85e5fe5412b917df5168823cf776eb25aef2dba607eef565a01c7178819f5"
    end

    on_intel do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53376e8004255f555417e675517bcdc75617c8357ed8c4f47724d835b0bc425b"
    end
  end

  def install
    bin.install "besydr"
  end

  def caveats
    <<~EOS
      Connect a coding agent with one of:
        besydr install claude
        besydr install codex
        besydr install opencode
        besydr install pi

      Homebrew updates this copy: brew upgrade besydr
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/besydr --version")
  end
end
