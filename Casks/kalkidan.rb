cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792892411.546b91c43f21"
  sha256 arm: "cce3141f54bbcca761672b27e0797220d8d2009df8a77e55957b744145a7529c", intel: "b929dec0358829efd1e6fc81237f7fe48f8377ed29e48ecdef62fa3f4c8a1d78"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
