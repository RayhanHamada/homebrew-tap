cask "android-cli-gui" do
  arch arm: "macos-arm64", intel: "macos-x86_64"

  version "0.1.4"
  sha256 arm:   "82c7a865cfb5f989eff4bc3ba1a31f0103bffc412ec380b4ca3d5682c2f983e1",
         intel: "8ed242c317bc2cc6074b86ed1b518e830926bf7416eb26b9d66f6db33bc678a0"

  url "https://github.com/RayhanHamada/android-cli-gui/releases/download/v#{version}/android-cli-gui-v#{version}-#{arch}.dmg"
  name "Android CLI GUI"
  desc "Unofficial GUI for the official Android CLI"
  homepage "https://github.com/RayhanHamada/android-cli-gui"

  depends_on cask: "android-cli"
  depends_on macos: :sequoia

  app "Android CLI GUI.app"

  uninstall quit: "io.github.rayhanhamada.android-cli-gui"

  zap trash: [
    "~/Library/Application Support/io.github.rayhanhamada.android-cli-gui",
    "~/Library/Caches/io.github.rayhanhamada.android-cli-gui",
    "~/Library/Saved Application State/io.github.rayhanhamada.android-cli-gui.savedState",
  ]

  caveats "If macOS blocks the first launch, open System Settings > Privacy & Security and choose Open Anyway."
end
