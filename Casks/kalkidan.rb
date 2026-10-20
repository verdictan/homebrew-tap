cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792454557.80812612dce9"
  sha256 arm: "12b8a5bfb0a47ca100d68828559341af09d9fb8018c10b9d3c250b024e0182b3",
         intel: "987cd854b4f89d927f6be1043011163832c48662af01294add736431a6d3362f"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
