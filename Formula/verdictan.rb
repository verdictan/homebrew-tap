class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.3/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "8601cbea223e826e8bb4bbe1ed23881f9e6069f77f34d25dc91a1bbc4e421a3c"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.3/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "ab55a463aaf09ff13d15201a1580c23d252222a9d88f70de2c5ec9b2b5147e3c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.3/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0af4cdde5aacfcf65cf23d486da90230efad40b316ec51cf76eca9e437bc110c"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.3/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d16e9a77044babfa3fa0549e3fb35f407d559fed4c31994855af409fece0d652"
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
