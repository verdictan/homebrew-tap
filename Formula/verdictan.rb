class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.14/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "bf0233f631c9e8b11f64e52fc99c930af11638d648112c666b83e5f66124e50a"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.14/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "d12c8ba1c0bfde812ff5f6a7ef9e8b9abc7e6445d1ccd7d6150bcee7b7573096"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.14/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6e633aa4cd8a3404c4873badc1ea02b97c62134232f24f442f4ec715324d0db"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.14/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25d162c902aac364ae454bef604a121dc876bc2e09700f32aa03970c87f184d2"
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
