class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "49649b511d7480848b4d9e7f464641becb7285522ff555344d7c7c3eafbd38dd"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "8bd2ec11052ecbcec639dc890b231d35c5ee7fa259d1805363bfb4e0092d99d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9ea5a8cf1015fd44e3b93fcd802f897d884df2e87d17c42782f199eedd4b1d1"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.22/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2cdd2b422cdef8529aec3c13fbae6b0a48bc51d275708a27ee53361e2b6929bc"
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
