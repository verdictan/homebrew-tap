class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.36"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.36/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "5a541e2780da108b25ede4578b34bdf7bca049b92f9a67041ed96ab9c4a7b598"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.36/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "2ea6e6e0419bd3f677384e3bc59692a1d18e9ae704cee05184c0263e5a44ca0c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.36/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f042f27ff98a6ac06221c6443590ac76e9b02fbd0e2299a9b47517dfef9781e"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.36/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2fab04de88b65b7949deb27a94c511a1094359aba64e86a4474c7f3a51e0cb1e"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
