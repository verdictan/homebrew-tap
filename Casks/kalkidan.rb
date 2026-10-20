cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792500577.fb5e5565bbf6"
  sha256 arm: "edddc710a7ff660fa82f3912a023d889166b7c7ec1349f1d8609691b9732c55f",
         intel: "c2fff3ec4ba3890f1d0958a84b36d6fe065e2e68cda21198d584cf17818835d1"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
