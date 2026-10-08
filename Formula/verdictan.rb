class Verdictan < Formula
  desc "AI governance gateway"
  homepage "https://verdictan.com"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/verdictan/packages/releases/download/v0.1.19/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "064d95c21c711f614e62f4654a8ddf8a84c55ac1979fe16d897ebcbfa9a75630"
    end
    if Hardware::CPU.intel?
      url "https://github.com/verdictan/packages/releases/download/v0.1.19/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "a89903947841d2057c0c508f482603dd93a8d18304fd09689f92de1ab2fb15b5"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/verdictan/packages/releases/download/v0.1.19/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77b389637f7c85910ef50eaee8ac37ca5f66fb7c5de1c2915f63b7c9f1d1bf13"
    end
    if Hardware::CPU.intel?
      url "https://github.com/verdictan/packages/releases/download/v0.1.19/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90e2c8e2f1cf3245074eba17d3bc47a97125eadcbe247df8865fb7bcae88bba5"
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
