class Verdictan < Formula
  desc "AI governance gateway CLI"
  homepage "https://verdictan.com"
  version "0.6.40"
  license :cannot_represent
  on_macos do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.40/verdictan-aarch64-apple-darwin.tar.gz"
      sha256 "55e84689ad53760068d5d45a07b7d8dfcc9bb16940584023ffcec9d2fa83068a"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.40/verdictan-x86_64-apple-darwin.tar.gz"
      sha256 "ef1a0f2ec896d5ba25ae5d99712bf36fab5b529dae7ddcab88b904fc560a9f3d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/verdictan/packages/releases/download/v0.6.40/verdictan-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac8f898e80d92be90fd650d012952bbac6d6a6fd0905d42be9ece4741a905585"
    end
    on_intel do
      url "https://github.com/verdictan/packages/releases/download/v0.6.40/verdictan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67c077230f1ece243ad65c918ee9a455832302d6dc22e0d5d93e07bacab80e6c"
    end
  end
  def install
    bin.install "verdictan", "verdictan-update"
    doc.install "THIRD_PARTY_NOTICES.md"
  end
end
