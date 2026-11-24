# Written by .github/workflows/update-besydr.yml at each Besydr release.
# Change the template in that workflow, not this file.
class Besydr < Formula
  desc "Supervisor and memory that runs beside a coding agent"
  homepage "https://besydr.com"
  version "0.3.0"
  license :cannot_represent

  # Only ARM macOS builds are published — no x86_64 macOS asset exists
  on_macos do
    on_arm do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "89f7b167e7e2261a4542f32c7c4df3d354212312554850d21ff0b5a50198209b"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f4150af2ecf5f2e905eab4cb73685248c5c70d6d46b5463490b933ab260d9f3"
    end

    on_intel do
      url "https://cdn.besydr.com/#{version}/besydr-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "18b19033d7688063be60e301f4b8f1570235c460da7b77af967c1eb6f816eb29"
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
