cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792591567.2dd4a8dd28fc"
  sha256 arm: "662e6e0ca0a93e9fb6a9232f7582f9ed576a158c3d59bff9d7058ee87aa2ac6d",
         intel: "c44997623be9da6ed27e3afbeb8efd66d9b3f2cca286ec51f858c7a3d81b73d4"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
