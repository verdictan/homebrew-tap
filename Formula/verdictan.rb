class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.52"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.52/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "ffb634a4330250efceb859e7918953f3fc6bf1e5eae722feedea5e7590a311d4"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.52/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "354b61c7c9130e38889c1e8aa449798325264957a6a85fb4735a58017c27e258"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.52/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "44984a79582359863177d462fe14c5f8aa0c00086b08c8a490330b8a926b6853"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.52/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb1ea0ac9a64f700c2731b59cb0dbf40e33025125600c1417263e36be1f7a21b"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
