class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "1da6d5429f00be7cd616628686f4b4305d36d3953cd52d6e43288e4a28251d3a"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "cfbc5b2d5b1e49f8c3329d5e0c7245cb8386dc660679844e9078d2d4dcd74513"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "461caa968cdc6de3301145418acaec1dc3d82bbbf2c286fe871d868b669bdc7c"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b42a293806e89b2fc5bf137dfed77c5979eb14f5eee823f1a8fcbfff330432a4"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verdictan --version")
  end
end
