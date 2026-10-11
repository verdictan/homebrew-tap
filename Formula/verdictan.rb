class Verdictan < Formula
  desc "AI governance gateway"
  homepage "https://verdictan.com"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/verdictan/packages/releases/download/v0.1.26/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "06c4e864e696724fce71280b735554a47feba915052acd1247698ca3391482c1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/verdictan/packages/releases/download/v0.1.26/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "a3cec3eecef1684cdb9a975a909ad13e57c7d702735319a11d36065e39b62282"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/verdictan/packages/releases/download/v0.1.26/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ba1b0b27279f6ddb858eb36204e7bcbae036e670a96b80bdc336cd784ff7076"
    end
    if Hardware::CPU.intel?
      url "https://github.com/verdictan/packages/releases/download/v0.1.26/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4d3fcc20ac24fda0a7e3111a51068d6be8089ab2b51edf068dd20d2c0be1a44"
    end
  end

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
