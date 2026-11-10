class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.38"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.38/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "50bb8196fcf81801a3f6258ebf8f937852e2a3df0dca9d4fd77bd391f4ae89fe"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.38/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "e2ffa1acb56a60caf8ebbff1c25e43add9d88cd87446bb44793c0c5bac701d36"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.38/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c31f5b9704324fb667f0cffb876d9fc62e9d7612854ba0b063dd0eb769acf3d2"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.38/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03bd05a414eadab097b60dce5ea51dc22589309a306f08d4265131566f2fa3be"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
