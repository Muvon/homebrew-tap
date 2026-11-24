# Written by .github/workflows/update-besydr.yml at each Besydr release.
# Change the template in that workflow, not this file.
class Besydr < Formula
  desc "Supervisor and memory that runs beside a coding agent"
  homepage "https://besydr.com"
  version "0.3.1"
  license :cannot_represent

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6f728f2ba2623d4883ed22f82afeee2dc94972e237001430f4b70c66843c9637"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1533e31a7b66151894bed59441f4da372dd0cb82c37b3d4252ff16e29aed415d"
    end

    on_intel do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b15b8a0ff28ac34e187492083e4d238b22ae6eece2083a6cc40762357d4338ee"
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
