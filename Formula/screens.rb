class Screens < Formula
  desc "Local screen registry and visual review workspace"
  homepage "https://github.com/verdictan/screens"
  url "https://github.com/verdictan/screens/releases/download/v0.3.13/screens-0.3.13.tgz"
  version "0.3.13"
  sha256 "339599863f3b456a4acff0e9555f40ef4957f1e729f5c98993bbb36eaf9ba440"

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
