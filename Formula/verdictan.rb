class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.10/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "fadd8d88b9e415b3c7c9d67f8d3c06259bc67ef1c07d17f537f7a4c564dd208d"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.10/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "7f6afab137f3695424a9c6a5e42c72840a2103987806830aa91204d9c9cc7d50"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.10/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07253d597954b2cc8b41f8421fb227d67983d8ad14a517d91dcb32f72f6f0d4b"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.10/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b7b59a174b1ade100e2f0732a29ec21aae0e1b8e1b8e36eb5388a75f4c6ea1d"
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
