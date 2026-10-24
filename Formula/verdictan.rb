class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.16/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "30c2afcfc1403338bc291330ae5b4b9299609de49ec44ce6b2ec09c63adc913c"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.16/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "96c5a4160d6576e1592049353e425bdb4f74e39041cd72e94e37e082f0665481"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.16/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c1d2277d9b952c3471bb29820c534425f469a791a50f27e97a59d93e2a7aff9"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.16/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "116ba44631bedd0d037f362293da27720c733eeeff7c1a249078af1841ae5670"
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
