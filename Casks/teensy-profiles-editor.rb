cask "teensy-profiles-editor" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.0"
  sha256 arm:   "482c4e09dd91b54f4d379e0c666069c300d468dec1d5fe8cfd7334c6e83e471b",
         intel: "f6eafb0901563685e09647ff582dbf0c3047d3b0b87cd12e9511a45c8918efee"

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
