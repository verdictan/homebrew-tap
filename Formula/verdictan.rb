class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.42"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.42/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "cffc7ae1d8da81340b9fa748cae5fcbd1450bdd30ef6ed1df945ada3e2da5917"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.42/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "fd3a205c22f96cd7ab892bad8e4c3a8b9a28a93efe620b6e5dd520adfb4ea39a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.42/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6e7ee0720ba3022e2abc86730990643c79a0c0c7ecfc7702f5330ff04a6a346"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.42/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "73396ccc68a263bad4c4e44568063cf99450509b56d345c8bf90e8175aed1a68"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
