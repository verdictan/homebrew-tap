class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.23/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "e083760a9a1d1bf8f4aa1549015b4ed108e07688fe1f7572ddb38cb9fb9685d4"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.23/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "2a3362196b0c036a2b4f6ef0fb6d116fe267ce3f3813b5995be415c6eec01211"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.23/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5bae8b4459d0a9e4899c18bc53fe9266a0bdf1c6afcbb5adb4148fdc1612705"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.23/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d57c1d4a20acac21e980832ec4cf58fc9bdb44525483a2d7b74821c9afa49d11"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verdictan --version")
  end
end
