class Screens < Formula
  desc "Local screen registry and visual review workspace"
  homepage "https://github.com/verdictan/screens"
  url "https://github.com/verdictan/screens/releases/download/v0.3.3/screens-0.3.3.tgz"
  version "0.3.3"
  sha256 "338e9c6110c541e658eb87eff4ea1826876a641705c94879a7fa581ad8b2afd7"

  depends_on "node"

  def install
    ENV["PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD"] = "1"
    system "npm", "install", *std_npm_args, "--omit=dev"
    bin.install_symlink libexec.glob("bin/*")
  end
end
