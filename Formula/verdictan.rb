class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.20/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "756f6d4581e9e0a8fe5c255c51a6760f82d32433e6ecf114cf99df510ddd8c3c"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.20/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "044bb0028660354b4145cb196e7ee012b889eb9f02c3fbc3668ea3f73e66b8d7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.20/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "efff60e5e540f549c65b49188043d82d74b40d24d69408e3d1fa2bc9f63f455d"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.20/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14ec05ce165d691b46cbd1af5a33734930654383be354c5fb3925e7e70c2d63d"
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
