cask "android-cli-gui" do
  arch arm: "macos-arm64", intel: "macos-x86_64"

  version "0.1.5"
  sha256 arm:   "d03ed25a273b593cf9e94c54647bd57be27b7ba992a91d53c8d3e98056c1cccf",
         intel: "b392b3fc9aea9a08b936ff408a0312fad003caaca9880dc578ae5ad582f5153c"

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
