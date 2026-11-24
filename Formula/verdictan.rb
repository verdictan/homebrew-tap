class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.53"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.53/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "02088b905f45b678df61d9c2257bcfe334673c755f3211abf5aa162e9cf56beb"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.53/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "19bdffaba022316ace6d89dbdcdfa7edb0fe0744b5b8243a5611c2225199cb7b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.53/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92da3734408f9e201ad8f4cc8e49f08c061faf5103c9f5032889c4c6c6b57cb3"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.53/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ed952e37d53583f6cb7e0b0b110731ee1b929af84843f6c18db8b43ddcf9579"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
