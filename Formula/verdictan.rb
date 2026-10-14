class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.2.0/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "3b071f8375b322c8ec89e4868706fa304ceb7db5b96d9b83b2934b1586457da5"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.2.0/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "4f55e748fdfde01c4798684d2e5f5e422e10add9841dcd017987c42adce94409"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.2.0/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae8e5fd25226305d83e537a8e948093373703187a802c1609a5929bd28eafcc2"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.2.0/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b4c372e95306f010f16e2791d31cb9791e09b79e3b16c75ac2096a64876714a"
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
