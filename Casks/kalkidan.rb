cask "kalkidan" do
  version "0.2.8"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "5f958bac434d033d0a934b664b6c55c649a26d905f258bd49be21cfba1042e36", intel: "82e861bfd2c41dd1c0e806e5a64ca16b5fff8d98cb401ad3f70ab216baee9847"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
