class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.21/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "e90e3063c6d3923ce9528d6210b89944fac4a06b8135d2aee5f89ba03152e776"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.21/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "f37aa2231101e7bc0cd778407494aee7554588ddc7a43d82649282c429a5d222"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.21/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a901c4cc6b07e5a2663231d6bb8f310745e34c93173cd37b35f6d1193685566b"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.21/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fac15a0506f30eceff748b4a4b017e391801059545d4f5e9ede069eede4343e4"
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
