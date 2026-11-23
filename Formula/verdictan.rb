class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.41"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.41/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "366521102a85c5eb40bc996017f42d576e3b206fa01675bf9846428598fb5578"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.41/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "d15bc7cf3219ba96f651a27353ba32cb77cce0680b974c2c778cdd023b944770"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.41/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9595ad4c700c5c5c488ba16941effb75c2749fd36d0ae5345775f69cd6773616"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.41/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2363fd1a6ccc68c459e960c6af59bd3a65a1a26a70d5082dcb638c9ad7d4edd8"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
