class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.24/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "c58a53e4789f2e964fd804e2289ff61156896c6a44478e066954c4e9de61e8a4"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.24/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "1e557065aecf3aa4dda8b244b1c81318a1592a3693b280a993781f66c293c941"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.24/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "177e884e6404672cde698303626ff04dba4b2891da36aefe55a85fa96b30b69a"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.24/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4356d661ad8ad42e6dab5e474aa954e471061414a8f104a2b067a8553839c145"
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
