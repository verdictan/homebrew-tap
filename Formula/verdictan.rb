class Verdictan < Formula
  desc "AI governance gateway"
  homepage "https://verdictan.com"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/verdictan/packages/releases/download/v0.1.23/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "ce85a38c02bd366a68b36eb2da5247f1a5577a666945316723f5f74527153e99"
    end
    if Hardware::CPU.intel?
      url "https://github.com/verdictan/packages/releases/download/v0.1.23/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "518058f7167a4d2899df451dc4b6323827889d7ff1ff83d9300e792c784f9077"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/verdictan/packages/releases/download/v0.1.23/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94a9e6d6d2b649d4613ac888d843a43b707a26e751e45f51a8e5488256b1a3f0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/verdictan/packages/releases/download/v0.1.23/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e789a5eae4a8e20bc2c942c310797bdbf5555d2cf2b6dcfae968412f3761462d"
    end
  end
  license "BUSL-1.1"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":      {},
    "aarch64-unknown-linux-gnu": {},
    "x86_64-apple-darwin":       {},
    "x86_64-pc-windows-gnu":     {},
    "x86_64-unknown-linux-gnu":  {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "verdictan", "verdictan-update"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "verdictan", "verdictan-update"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "verdictan", "verdictan-update"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "verdictan", "verdictan-update"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verdictan --version")
  end
end
