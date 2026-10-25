cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792931857.f9cbc216238e"
  sha256 arm: "51f8bd370f199b3259b6b3471cad153d47f9140f6a37a0f202aff9c4fee30429", intel: "cd588bdcc9f13bca20732c04f6e22e2c9dba0bbfc45428c37ab73cce3cbbf861"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
