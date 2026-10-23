cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792788956.7200f6703690"
  sha256 arm: "31061882b7361d2738c758fe2ce29cad7994fd420327002e1e2ea7205f282cc5",
         intel: "2c70962db2c455f5558ef691d1c06c8e776ef1369e6e1ca83b5c4006b1873252"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
