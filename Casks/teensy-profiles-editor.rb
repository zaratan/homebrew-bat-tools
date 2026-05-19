cask "teensy-profiles-editor" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.1"
  sha256 arm:   "170a84b9bb2f336591ffc028c319c7ff27d8838509a8f57a89d43642a00b4601",
         intel: "c6aeb6602185ee7ee1fed06c6ca4726f68c8b0bcfe0dec5756ca376bb231e6d7"

  # Fork: upstream a-langlais/TeensyRecorders_ProfilesEditor publishes no releases;
  # signed/notarized macOS builds live on this fork.
  url "https://github.com/zaratan/TeensyRecorders_ProfilesEditor/releases/download/v#{version}/TeensyProfilesEditor-#{arch}.zip"
  name "TeensyRecorders Profiles Editor"
  desc "GUI editor for TeensyRecorders configuration profiles"
  homepage "https://github.com/zaratan/TeensyRecorders_ProfilesEditor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "TeensyRecorders Profiles Editor.app"

  zap trash: [
    "~/Library/Application Support/TeensyProfilesEditor",
    "~/Library/Caches/com.zaratan.teensyprofileseditor",
    "~/Library/Preferences/com.zaratan.teensyprofileseditor.plist",
    "~/Library/Saved Application State/com.zaratan.teensyprofileseditor.savedState",
  ]
end
