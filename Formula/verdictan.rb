class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.19/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "346be5a7f1ad13a698dbc7ecd7c9e2d424f157ae1c11e9b01639785e8c0fa666"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.19/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "c53b816575c9ab9bdd7276ddd003971b4342409a6749f421e9f9f00129edc373"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.19/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13f31ea31a60d36da7841a99831f35da0cda51b7cdf53adf3ce88e284340a4b8"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.19/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2deeb9154dfb4a4b8a9168385067dcce28ce4165ea8384cd2d3a2d92bb1c2ef3"
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
