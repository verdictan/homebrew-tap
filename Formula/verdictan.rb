class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.26/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "7aba8e999abc5a8e75401fe70a640687c9470056fa5f2220342ef6229ebf592e"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.26/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "abf5fe0452a68b4301fdbf9add052f671f96739271588f76210e5bc7e7eb389d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.26/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "779bbdf0a43558058076d347257083befdb308f999e8c8e480c83239902acce9"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.26/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81c55c0ef7a0d7365e945805055781644ab899eae7081099414f33bf98f0d05c"
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
