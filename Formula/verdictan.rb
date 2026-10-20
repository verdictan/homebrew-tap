class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.4.1/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "5f52a07fe9492ac2737ae217461fe6a7d96edc5bf16397d419f607af71e59335"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.4.1/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "a4810cebd1d34aca1f779b2de3ae9ddad9d3db8079ea1a535c76c731837c8115"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.4.1/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab261f7175f26897b5ad3b025f15bc7969f0fa6f4e1e011352272d149370ed79"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.4.1/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50ce66ca78cfa743a748368a1a535462a732ecd60f53e13d13d5b0af9058785c"
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
