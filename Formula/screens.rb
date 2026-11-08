class Screens < Formula
  desc "Local screen registry and visual review workspace"
  homepage "https://github.com/verdictan/screens"
  url "https://github.com/verdictan/screens/releases/download/v0.3.14/screens-0.3.14.tgz"
  version "0.3.14"
  sha256 "0d2a6cd67e349c60758f0d4c06fa9da5bacddbaf367c56ee086de28df53924aa"

  depends_on "node"

  def install
    app = libexec/"lib/node_modules/@verdictan/screens"
    app.install buildpath.children
    chmod 0755, app/"src/cli.mjs"
    bin.install_symlink app/"src/cli.mjs" => "screens"
  end

  post_install_steps do
    run "{{HOMEBREW_PREFIX}}/opt/node/bin/npm",
        args: ["ci", "--omit=dev", "--no-audit", "--no-fund"],
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
