class Screens < Formula
  desc "Local screen registry and visual review workspace"
  homepage "https://github.com/verdictan/screens"
  url "https://github.com/verdictan/screens/releases/download/v0.3.11/screens-0.3.11.tgz"
  version "0.3.11"
  sha256 "78b25c45fa9705089c1ead92374fb66aaa4d6af79cb0f21a76dcc485b2936a93"

  depends_on "node"

  def install
    app = libexec/"lib/node_modules/@verdictan/screens"
    app.install buildpath.children
    cd app do
      system "npm", "ci", "--omit=dev", "--no-audit", "--no-fund"
    end
    chmod 0755, app/"src/cli.mjs"
    bin.install_symlink app/"src/cli.mjs" => "screens"
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
