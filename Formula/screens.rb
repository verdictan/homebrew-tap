class Screens < Formula
  desc "Local screen registry and visual review workspace"
  homepage "https://github.com/verdictan/screens"
  url "https://github.com/verdictan/screens/releases/download/v0.3.10/screens-0.3.10.tgz"
  version "0.3.10"
  sha256 "31c0f8157d991a49df2e3a0c0839e43c77a9c4ba02d9811d88b80ce546fd3095"

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
