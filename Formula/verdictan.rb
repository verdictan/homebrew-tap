class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.47"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.47/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "c0db62c8b4c326c42d0a6b6db8ffdcc1ad1465ef4c3c7f9c4f29a7babd9ce83c"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.47/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "0ba732ad22477522089f5f754433bcf1fa8da628f10edc92191e99a7eab8be33"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.47/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e6d141b9fab2762ed8974f60971f801949c797febe6c3e6e6ada7b597d88a68"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.47/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dae9d4f753d758840d83386358223a3333690bbf2921949b9555975fa9a03161"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
