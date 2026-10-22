class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.11/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "8e9737dad647f955bc6d35be9cd40137e10814888865d8c78e1eb611e962800e"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.11/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "a2c37e23f26b71db91becd0028ee04d3396edae22edb89950df4b67d601b3805"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.11/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc91183bd3aae0ba796a5cf406c9f090a878a7968e111f85eeafdd26b0c2736d"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.11/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5f9591ac723e5d1648118b474e4a30ceceee5b76f33f94748fed4c74882dd93"
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
