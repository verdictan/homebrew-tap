class Screens < Formula
  desc "Local screen registry and visual review workspace"
  homepage "https://github.com/verdictan/screens"
  url "https://github.com/verdictan/screens/releases/download/v0.3.6/screens-0.3.6.tgz"
  version "0.3.6"
  sha256 "3d30eaa8fe7e66c72a8da68a7038ed06b8c1f80c44dc2a0ad33e2732a1f03e7e"

  depends_on "node"

  def install
    ENV["PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD"] = "1"
    system "npm", "install", *std_npm_args, "--omit=dev"
    bin.install_symlink libexec.glob("bin/*")
  end

  service do
    run [Formula["node"].opt_bin/"node",
         opt_libexec/"lib/node_modules/@verdictan/screens/src/cli.mjs",
         "serve", "--host", "127.0.0.1"]
    keep_alive true
    environment_variables PATH: std_service_path_env
    log_path var/"log/screens.log"
    error_log_path var/"log/screens-error.log"
  end
end
