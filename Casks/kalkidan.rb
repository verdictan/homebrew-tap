cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792707292.d56ff06f6707"
  sha256 arm: "1b4e94f994f0d5d2963703a4f0fec30afcc40fac59010f2760cf9ec9f84126ed",
         intel: "99514d0827d785ec65c1612151ce40b239494b2b353aa020c06982198713598f"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
