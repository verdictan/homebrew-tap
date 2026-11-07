class Screens < Formula
  desc "Local screen registry and visual review workspace"
  homepage "https://github.com/verdictan/screens"
  url "https://github.com/verdictan/screens/releases/download/v0.3.2/screens-0.3.2.tgz"
  version "0.3.2"
  sha256 "4ceb17f6857ba66afbc253d7932b57aa2eff6546762c2f743354b6c2cec4b974"

  depends_on "node"

  def install
    ENV["PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD"] = "1"
    system "npm", "install", *std_npm_args, "--omit=dev"
    bin.install_symlink libexec.glob("bin/*")
  end
end
