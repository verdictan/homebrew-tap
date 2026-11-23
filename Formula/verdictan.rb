class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.39"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.39/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "3680d29bfdbc3b6d83e646bccc7b104d95db150d29cf4a04fd72ce7508967507"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.39/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "81ed63e1ff4913a46b3631cb00a0e0072882d30bd10c8103f882e99118276d36"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.39/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de292d00d62794d6a2eb5f38328c4a6f7f7ba0428791acc2f8cd988ace09f20a"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.39/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0eb0b6c5b4e1ceaf10f0ed7ef70d5febe25318e4dfaeec39569206f4206942d"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
