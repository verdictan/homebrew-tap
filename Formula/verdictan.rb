class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.27/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "905dc1f3d4881fdc77533edd00fd6f7bfffde881bd179a2d78f377a155205f8b"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.27/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "bebfe5106ec97100f7bc3fb0d97cab82f7bb02b9348f416d97fbb0a07db6df85"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.27/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "953a367bd0e466a3dc4d88932c0f8198866ab1bf1a71bca82c0345149026c88b"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.27/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36f6a77c376f6c0a8c6a80ece3bee6690332433b0e982532fe4c090a5facd744"
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
