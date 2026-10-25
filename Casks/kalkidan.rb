cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792894113.bf80922a7499"
  sha256 arm: "9adb4c928f90b4bdc1b04b152ca3acb2c1897ef62436a4d09549a9972f7b89fb", intel: "6e8ce375b2783213b2393d6273c0571a2e09150c629fc36b77020bff7f844961"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
