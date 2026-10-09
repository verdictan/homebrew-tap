class Verdictan < Formula
  desc "AI governance gateway"
  homepage "https://verdictan.com"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/verdictan/packages/releases/download/v0.1.24/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "af0283fa582eba29e8a1e8e79e76b917fc846d63b68a7dd0014f65d7710ecb51"
    end
    if Hardware::CPU.intel?
      url "https://github.com/verdictan/packages/releases/download/v0.1.24/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "b6551a13da56eb1e745f9d3b905eba72f6b72102c6ae9288bdfc33cf440d444c"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/verdictan/packages/releases/download/v0.1.24/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "522d79eb3d90266f7e59cacc59c8e779b0f36abe970379bd42f900e871083352"
    end
    if Hardware::CPU.intel?
      url "https://github.com/verdictan/packages/releases/download/v0.1.24/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff5579e3a39c3ee7980ff571b24ca28c3fe14739889001ae8935d124ce5fc30f"
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
