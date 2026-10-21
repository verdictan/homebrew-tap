class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.1/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "93e580d1c3ea8f030e1b73efb278e929ad3e4429aaa67c15284b3baf9ed84311"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.1/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "34f67f002581f58d56ff91b1f219ec1529804d651cf68766b0bd8e1aa691a986"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.1/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d8b85c6638c9ee6262dd7924a30ec8a18f5be3048c1567a31bf925c701deca1"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.1/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "436f5b8f426404fab204dfd7b976cb2d811e6a17403da8c0cd7fa43e9c40d144"
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
