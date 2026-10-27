class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.28/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "aa2e94eb40389b80521088e70cf8e8177cc0e120928ede8b120c9084b95f4bdf"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.28/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "799ddbe12a4d24d3063d7f9b23ad3188d2533e1233fa54a3d53d365c7c8a4f80"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.28/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc786ccb680e33f8a0d452f754c9333ecebd972270a7b7adba006a7f459dd9bb"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.28/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "884dd163e410f76837375b75dc65f94cba295fc10d9f1b16a78a92cfcb41cb32"
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
