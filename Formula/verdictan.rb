class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "2bb0372b9bdecf2569d7bc9c3956615a16c30aaba9785645757a9e3ddf3cc0fb"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "549bec9396586dc8598942ef159d2890d189714736514300c4856e7f67e27976"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90775d40920ddd0ad69ce6e0961d1949989d7eb2da50651d87fa5054184ca2e0"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "73c9753e73803a19a15458fcccb551fff5c5466af1ead6826cac9e751180ec60"
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
