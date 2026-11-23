class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.44"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.44/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "9b812bb92f08c3380c13e7b4abefdebfaad887a547d377fe22ce6e11e5d46ac9"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.44/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "df5e96e57124b54eed3d69471b7ca6bb250ebd18580aae32f25aeb352f065a97"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.44/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e8bb0b305c245408185d82d6854ad684bd02093d4ecd38eeb6d67131012c37a"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.44/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6befca17be20e62161114c6087aa2a56023e187f8790cf4e1364a308d24a3c68"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
