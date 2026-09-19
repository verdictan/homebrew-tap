class Verdictan < Formula
  desc "AI governance gateway"
  homepage "https://verdictan.com"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/verdictan/packages/releases/download/v0.1.3/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "4fbc6f388f3d8f955af0ea99283d5e20785487244a0f1e92a5e764047ec3b549"
    end
    if Hardware::CPU.intel?
      url "https://github.com/verdictan/packages/releases/download/v0.1.3/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "d404eb9594670637bc4e8bd409d99625f95e73c8a882db7aa5e24cb03e21609b"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/verdictan/packages/releases/download/v0.1.3/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6cd272938a4efff3a4f337ff57bc90ee93622b7b2aeab34281621ce5a9393f74"
    end
    if Hardware::CPU.intel?
      url "https://github.com/verdictan/packages/releases/download/v0.1.3/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88ced4911eefce6e4df57afad996786d2410e98631e36bb75c4d5227b95adf61"
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
