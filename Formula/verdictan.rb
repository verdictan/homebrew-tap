class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.8/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "e38bdf364fc1994ad233d15920167c7f03d704d1e8fac24c08a162e1f3653975"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.8/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "4bdefb486c001e67ae75cf4d655dacac4ecd3a9e5289550062bb3ce5f2f5146b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.8/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3972c6addd9eb7ab7855530da7f34632b94b8e2b56ff6bde404790bbab2090d9"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.8/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b21d0646b2d428d4f2ac6d6739c3a80c018f8619a2309e58713582aed31c1cb1"
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
