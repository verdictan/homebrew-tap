class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.6/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "1206fcdd13e33cdb0746d879492120a7a1870ab9c5d35e6565381e7ca31609d6"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.6/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "60124d0680a99a80b71b406488ea54c972577387f650b5edbe53bb7266e99653"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.6/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41fb12bd9c0dd60a0603df8a59648e7a4c6998351e3f502f237f7c4f13fe90a7"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.6/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b9ebd41899962bc3626e4b3d6aba9dc41094c5595b6963a1bf378c8937105ce"
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
