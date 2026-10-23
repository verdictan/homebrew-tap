cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792713556.6e3a8eb1af42"
  sha256 arm: "23f122896719d8e31a52f2f41322bad634fb8cb1cb606bb148476f898367d18a",
         intel: "c3eb355211e340c25fc0a91485577aaee7d363e4d72af37178ae31cacaaaec74"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
