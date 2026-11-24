class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.52"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.52/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "84a3da5472f280be9462112f58fdad1065decee39891690ffa2b10c166a0ff44"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.52/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "6227885f46123fcd9cabe904a68b1e98e775b20e974ca829404c923fa683fa60"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.52/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b197917efef731f1dcad0e166810c5c48bb4b4084be3a5045c18c58b4b0cdf4"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.52/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "700e37de293c646755bcd28c484d7e8424c4696ada0d534c11c9d379b0579aa8"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
