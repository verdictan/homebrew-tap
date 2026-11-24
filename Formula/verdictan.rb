class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.49"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.49/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "03ce528e62e71b070e0af4eae1840b132d7809a32cb364dfc8dc0700cbbf7d62"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.49/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "1e55161405a06f21f05141bc55db0181434448cda87e644b1595943cf9029430"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.49/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42e7848de6d73a0242ba8b669ac027371af2607f33d1c9cf0524e7235b972e07"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.49/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53edc68771e3af6f9093fde78b0ed9ba4fa7dca7334ab7643d7860bea6d60808"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
