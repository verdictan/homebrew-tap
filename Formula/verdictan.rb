class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.50"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.50/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "8b48ef317250a3779e9ff44b573468ff803190f54b1ebaf943fc8b786e30496f"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.50/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "5153264a14e9135a811e2d1b5cab27c7c793e3bfb82a789401341c8b4502a79d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.50/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1dbc44bd12a813c259094678ea0b02ccdaddd8dbe1cbb5ddede161fa3bddcae8"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.50/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72841acf6c20564c732b234a79f2b5643d15c8a689dea280d0d23daea13bd3d9"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
