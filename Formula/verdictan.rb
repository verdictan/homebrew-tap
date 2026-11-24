class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.51"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.51/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "7381e4203df5bf1ec8ffe49c2b093e174b057eaf3f14d71c5a22740313f5d501"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.51/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "c4a81ff6ea0bdde1438c22c7f8167a0ef7f2f82e43acc56565063f4ed840a9b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.51/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a0c4ba22c60947b4371ca926d4bb45f84a61e2e4c246a13ab97d9862a511ef4"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.51/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a1e4206597c0b4c1847ba0cc19588dc496266593a42460b61463198bdce5c73"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
