class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "e5bbd4f92d6a19693b2666bc0dd3408e259761f4bfae128e57d85da8e8911884"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "909ec951aecb4258146ec4d5ac10831b32e1f0c40e3c7fe5ce6c235489845e11"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e482ec94cc18f04fe7b3e79c1777a3a112bf73b574710c138da0a53f575bf839"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48c9f4fa1feb19f7902220922b3045fc0ed4067c49d23c2a0ebef6b7516b5de2"
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
