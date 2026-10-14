class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.2.1/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "fc3088d6ad731a05c7ea75c3a7f3a1ee0ec139240b922fbe5a48bc53a6ecd62e"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.2.1/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "d4d1bfc6d975f83fd3e0db9441e05d963d02dafd6fbe0d23fe9ad1a197d5809f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.2.1/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53314ba26f893d9ba53c12daef0c0dcf961cff5384271c46547c2f99b55bcd45"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.2.1/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0b52e1bb7f4a4b492d71048b7fde99587f0b0f9e1b92abe10c3bf55587b339e"
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
