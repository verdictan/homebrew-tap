class Screens < Formula
  desc "Local screen registry and visual review workspace"
  homepage "https://github.com/verdictan/screens"
  url "https://github.com/verdictan/screens/releases/download/v0.3.8/screens-0.3.8.tgz"
  version "0.3.8"
  sha256 "73f76fe2f809a634f7540bfac477e12bcea97a0cb246e0bf730ca6695d76dbbd"

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
