class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.3.0/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "4ffa9eae2b5fe6032da7c1551f341bc1008fc7a87a1d924b57da78f52ca7fa11"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.3.0/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "5077c12ae644e278efc26236f85497ba96492ee5c90fb53a6b7faa9d14a2df9a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.3.0/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85dab62fce209b21d3aca1882555abf48f430b4f1f38c1466a69b9c86bdaa8ae"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.3.0/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0096d47513d3168c705aa4b5551b9a8513e2234bd09d4448371b3dd0f1c0312"
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
