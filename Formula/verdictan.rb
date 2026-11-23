class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.46"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.46/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "823cf1a5554c0714f0bf045e60980c7dd188a2ac2d60ceb11de25f349d293816"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.46/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "b459a151b57e24e91b63a713f858244333cc600adefda573bad8fe775a295f51"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.46/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e24e536adc5d1a265b980834ca00843f49b615ad40d40e24f0d9441201b84a6d"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.46/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "637fc4ae3924c5116a0faaba0b5066522b5f119c3d364dab076ed11b5b49c5b5"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
