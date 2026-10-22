cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792665259.ac73aedffa70"
  sha256 arm: "78e0684e4ab1b6768b9db1f8bdbc8484f611bf9e3acd7206024d94abb816b299",
         intel: "9dc4edd1d60af928e136b51ac21b101bb3b55db83e93e474977f95f2611a6ce1"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
