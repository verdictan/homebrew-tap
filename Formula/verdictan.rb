class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.45"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.45/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "a7a3860d59b15514dadbd302998706a5addf66586c2faabd023f749e4c5a27fb"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.45/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "e6674e7de2813651945fa19629a6b7233984bb40d56689b7bd83dbd0310e6b84"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.45/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b56fe546df8cd3cd457f88ab36a02024a943d60ae1823ee1c317fc225f4bf7d8"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.45/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ca7db19eb2789db7f6f63ad96456775dc1e742599b0e84debec9bd35b550714"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
