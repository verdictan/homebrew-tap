class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.5/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "6999827b66991f2535e71a6a3be3b408b296592ddb671d75c09aa6272b660866"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.5/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "61994c059e3154afd5809b976c1e89832773e6cfd2baddf086d4b560dfb63175"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.5/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b3cc45eff237762f7eb64b7e3b9b9bb1cf0d9bd912b0d73348e01d8926a4806"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.5/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a776f2ff25c0adad84ffaff8fee91815259965fb00f4efa09ed01b69de3b94e"
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
