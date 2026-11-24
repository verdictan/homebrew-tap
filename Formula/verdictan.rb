class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.48"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.48/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "ccbbfa117336eb4cc161a8b8b7b62a594f0aa3c6488cf391826af09833ef3607"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.48/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "ec1ff9dad9ce06bf5b573e43cba0594d2d00b1050fc1ee0f7bab5f5f30f54ae6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.48/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6e5446904d2acd7f6101be3659c3a5dbe0287a32f44b5adb1661f819d9ed989"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.48/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28ee62ee41551230c5dbca3b68f964207d8ba9c21d48cd8cc3bed64de60e3649"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
