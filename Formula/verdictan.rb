class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.29/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "ebcabb30308c973e407d25e0ac30e495c2894fac6602bea35f98b029c4df67b6"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.29/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "5c194539597ca0aa55c554f6f9e99db5bd52fe07812347b203bd6059f5dc13e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.29/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5dca9bffb663e3daa1b51ae26c91da2c2199a20039091496c61c9a8c4337347b"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.29/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7238b7c9b8fa6e480b6a373c5c73434cd892729cbe2139c6e7155bfd2d2c74d2"
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
