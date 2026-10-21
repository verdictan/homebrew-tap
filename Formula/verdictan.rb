class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.2/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "8cf1d3b9aebeedb6510e86c8d55be21d65a2c70c8c21046b0bb854049998dd2f"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.2/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "bd4fdc849a7f5513da72286e234fd78dc22af8d7289ec13c13e0252609c7c3f3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.2/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2c0741d471e685d35e69e1340810fe59444cabd6af7fbfc845a287868b7efd1"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.2/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59c8d4c2cf981520cefae6a39f452d72ded930ac655239867691f2efa100cb30"
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
