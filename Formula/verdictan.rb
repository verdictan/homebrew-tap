class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.25/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "12e6b35865a07e882163bc891e634fcd625d9d2ab7d0a674a78245848182e81d"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.25/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "dd1814e380d4be2f5194554cee05e87156014575011917173f817b4444436081"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.25/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8675551f05b6034251ae06db8977970546eb9c7f4a174e7628f2fd45deeec9cb"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.25/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1a266ffc5ee17293b140c1be533235dfecc6523618fa2ddf377447c03428d8a"
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
