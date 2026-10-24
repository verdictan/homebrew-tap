cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792857496.fab5a46ff3e5"
  sha256 "1eaa76ef26c54610a9836926a7a228e1785b3049c4327deab8795004416ff1a7"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
