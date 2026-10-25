class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.17/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "981c55dd90d333a733620546108b9cced71d9283506c5b7fd71e3e41a57e04ba"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.17/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "13b8232d92f824ce2124a000cf6d875e4ce94b29bed143b80cb62f276a223f4b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.17/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ce8fe3ae04ff155fcbb7ff938466431c409a0501b2500c86b924ab775b70e3b"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.17/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87cc434462ba0029d9ab51511e639ad9762b7cf12099f88af149cffcdc266731"
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
