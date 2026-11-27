cask "amr" do
  version "3.0.0"
  sha256 "823914d00784721dd949a071fe4e0796a2a32de49671b7ca9c0fa5b7049d7730"

  url "https://github.com/1orgar/amr/releases/download/v#{version}/AppleMusicRemoteMac-Universal.dmg"
  name "Apple Music Remote"
  name "AMR"
  desc "Bit-perfect CoreAudio server, 64-bit DSP, and OLED remote for Apple Music"
  homepage "https://amraudio.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AppleMusicRemoteMac.app"

  uninstall quit: "org.ksholokhov.amr.mac"

  zap trash: [
    "~/Library/Application Support/AppleMusicRemoteMac",
    "~/Library/Caches/com.kirill.AppleMusicRemoteMac",
    "~/Library/Caches/org.ksholokhov.amr.mac",
    "~/Library/Preferences/org.ksholokhov.amr.mac.plist",
  ]
end
