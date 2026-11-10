class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.38"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.38/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "5b2d570cba5d8b862ca08403ed122f2d1cfb248024b585d99bf26fc4390f5b87"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.38/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "ff77d4f62b90115c42fd707824ebc2c848d2ca78ae7945e399fde28304b1bb47"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.38/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c430467c2d929bcbd2b6e9743647715fc74b2b8ae0b2832d36d9ef28b962c94a"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.38/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2dbbf4d90a32bfcc6437f16c7787f2d63cc93c7932b105836c9f342516551d9e"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
