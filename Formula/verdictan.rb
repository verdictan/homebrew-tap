class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.43"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.43/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "c5c2baaad5c239d7252f3c83c63218507136feb01f07a82ac3d62c9a49a7a98b"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.43/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "3f84f4c09d56c5c17056065e72e1058a118ede81d6551542ae134fc5c7e82d6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.43/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a823841bf8d9aff55e9c42dfc812e0744c46548de7827fcc9dd72a002951dce7"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.43/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86071daae9d6ec494b110dd73b3a4bf79bb93d9a06a8364fb68593388e1dbc17"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
