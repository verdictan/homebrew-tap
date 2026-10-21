class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.5.0/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "10d812e3895c7b1f918f4fda9bfc5cbb4ac20dccf590037ddc5529ffd721985e"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.5.0/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "787f093a9f83ce07b265f18cdef82545d499d54e1256185c44ff221afcab84b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.5.0/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d200b363be22d1fe84b9e384f6ddeb752b1f5f758b3a2cf5ca877d2062d84c72"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.5.0/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa0721409842d3cf2eab5454bbe9336ecbe8407c06f7737a2ef3379eaf8be2d6"
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
