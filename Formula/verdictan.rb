class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.18/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "84cc67a5eb739c3326f3959aca87b9789fcca2d7f69c0972209b65dcf7b678ba"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.18/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "14597398be818e41d5dc822301784d43608a79ab0fea2035ccc4fd7b9ac7fe02"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.18/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6485bffc17707b2fa3fe91feab0643c9b7bf77ab145f4f2fb7fd4d2e7726e86d"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.18/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b15c61e7aad43b31c460c0b9950761dab37dd927a8a83bb9082599cfe2a2758"
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
