class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.13/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "9b0156af56a40c134d7a3ebde037f6417421fc23f3d79bda470e9ceb73459369"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.13/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "a9c217590f08987b3a95ae6b561160697b98eaa1ca57ebdb8793271563f09ee4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.13/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c29764d54782d8bf6af366f0d62e17571a8f6a6b7e0ef405fd1d51f96851be75"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.13/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed06a200b85be5a70d67652dac3e3a6ac96940c8bf3b92f743bc6bbfa99f43e5"
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
