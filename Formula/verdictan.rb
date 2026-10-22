class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.12/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "10cfdf4ba0dc503f4705ecc2fa3c059f47f4bebb1398bf0e3c940c973696780e"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.12/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "9fc0e1cd3a65d2356a331da90e1d80432f2e74d05211384ee5c18e2d9b105444"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.12/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcdcd1ec2df458d99676cd61f426cac6eec5f0d18eefbaf305d4dae37a1dd690"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.12/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5743be84ff015a7afad50858797d454a24d58842d21ef5042df82878f0a0e50e"
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
