cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792582232.157cf530d729"
  sha256 arm: "5f8633a2d0989605175634b283441e0c61daf29ebdd79b0f246e67fe85eeec36",
         intel: "e3c0ade01a227fb758e2231799ce821f7d4d5a88a5319eb03920d50399d7b804"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
