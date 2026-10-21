class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.7/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "2298b7f5a5557b595d702efe301941813a4734ff678eb23dd13dc85b27d677c8"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.7/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "f9f10c32a51e4055f5ba571a5790a13ab219cf997ebd8153a209e5576b316aaf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.7/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9be449f996235354aa6ce2669ee50c5cdeb38249775874e7c1656aea19d03e8a"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.7/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02b5dc27de95460aaee839faacd437867bb7d56a2af6d0038117a463be24d21b"
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
