class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "578fb8afb74b99d5c8029b4c6259ed804143086a144c21de641486ce99207008"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "ed75870f2151f6f7a324fde96066bc78d99339966b59582223d0aea36ea64c65"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d747724ed46dc2ce57203ee9db83769fc934affd5885b7374e7ed968482e215"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f34474d5f759270341633e169ee4346280815225b6985a49332910cd03ed606c"
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
