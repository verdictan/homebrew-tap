class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.12/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "f1158aaf0d8eba652e680b7e284279a34d428a77ea41fafe7c4dc397620ca50d"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.12/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "1daf3d80c505c8cd2d3edd6a8152f1e0686d52fdee2c3a8e75715632c8a9494a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.12/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "476fdd27f56f985e7d77cb9fb15068060176981ba7319fa0622e3d5f0a6d72ff"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.12/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86bb9b7966d746d7a260e7ea1dd0ec525bef66ad7092316f1b610c2f95866e3b"
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
