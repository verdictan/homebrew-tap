class Screens < Formula
  desc "Local screen registry and visual review workspace"
  homepage "https://github.com/verdictan/screens"
  url "https://github.com/verdictan/screens/releases/download/v0.3.24/screens-0.3.24.tgz"
  version "0.3.24"
  sha256 "1f7ff2388a51ee3bad1d5408f6b96aea0240b54708c28f03c6760acd3bd83650"

  depends_on "node"

  def install
    app = libexec/"lib/node_modules/@verdictan/screens"
    app.install buildpath.children
    chmod 0755, app/"src/cli.mjs"
    bin.install_symlink app/"src/cli.mjs" => "screens"
  end

  post_install_steps do
    run "/usr/bin/env",
        args: [
          "-u", "npm_config_store_dir",
          "-u", "NPM_CONFIG_STORE_DIR",
          "{{HOMEBREW_PREFIX}}/opt/node/bin/npm",
          "ci", "--omit=dev", "--no-audit", "--no-fund",
        ],
        chdir: "{{libexec}}/lib/node_modules/@verdictan/screens",
        env: {
          "PATH" => "{{HOMEBREW_PREFIX}}/opt/node/bin:{{HOMEBREW_PREFIX}}/bin:/usr/bin:/bin:/usr/sbin:/sbin",
        },
        print_stdout: true,
        network_access: true
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
