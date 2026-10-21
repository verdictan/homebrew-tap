class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.9/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "3b667be7b18dc545c86d0033c72deac31050ae56fc76be9d0bbf949bb6b31346"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.9/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "53cf6dc6988a69ff69df57774729cf474aa01d64612117c73a4650b9fa4376b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.9/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6d502fb4e50190bffd268bbc88d0e2edeae70aea8ef0d8fd4b68f6e6d236292"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.9/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "712b8234249fd8f63e5ae9cc74c20a32d41a082ac732161d8b6d89d547e757b6"
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
