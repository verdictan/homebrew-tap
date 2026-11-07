class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.37"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.37/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "b34eeb79ac441d4e692e32df095877d9ae6bee6459d627a232231c0e7d61e505"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.37/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "746f94e49dd221664612675303a7596f0fe1cdc475d6f81f7c5324da2aed32fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.37/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ce0b2dd2c8080e54a7c5d6ac94657eee95ffe2cd48ed8a04636d0dafdaf6dafa"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.37/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10ecb490b7e078fc8f3fe5cc685c6abd0faae320d38ec0faf1c85194b42ba824"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
