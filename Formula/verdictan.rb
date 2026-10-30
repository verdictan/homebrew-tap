class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.30/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "ef63e8e07f01ec48d12cfdc4ffc369e6b5e2caac6937da25eb432f1b6e7ae47d"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.30/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "f98f6c5ac684bc712fb72ac30b0f6f6a9927bbdcb8666c92d2686ec929903d00"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.30/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e82be10c82c8098a78c5622c390f31077ed4b669b580dbc3a83b7858dc8fb449"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.30/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca47db0ee7b0532cae2c14876f6652ad700444b564827c881a9ee47782e25c62"
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
