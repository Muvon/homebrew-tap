# Written by .github/workflows/update-besydr.yml at each Besydr release.
# Change the template in that workflow, not this file.
class Besydr < Formula
  desc "Supervisor and memory that runs beside a coding agent"
  homepage "https://besydr.com"
  version "0.2.0"
  license :cannot_represent

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "837eeb15f10ba391ec542ee83bd2930baf965c3ff2c45018a70b2915e8ebff38"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "974bc319c49c042347dec9c4f5df9664a5a0dbae70203d04b1abb58d1f4d3e16"
    end

    on_intel do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d872418355052a8168c28fb70ad21be462cc511373566c90b0c4e14ee811e3fc"
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
