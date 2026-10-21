class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.4/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "06b9a57829b1bafaa65d2ab039d9a3ae0f10145c7c50b007e27f699c1454d76a"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.4/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "58605a7b28b3f275e8323f87060db066bbc0f0b59b81cbbb9194611aa6bf7e1b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.4/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39c7b21432bc7e33df30f0df9ad849de512dcd4bc746010ce1006061773c6a90"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.4/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e0f1a4d708060159ea83a1a488813863b889fb34266a7193001aa55d97e897a"
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
