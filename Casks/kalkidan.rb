cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792599034.be53a0077761"
  sha256 arm: "e27546f35ac243e68ea5f753b5685309663a408d56660d53998cb2102b56de85",
         intel: "e38a19046ba91c5be363550ead18c564df232be970407d86d32950a866b5db88"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
