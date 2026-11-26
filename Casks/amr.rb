cask "amr" do
  version "3.0.0"
  sha256 "f35fd1d51cb5d2987aebf123be16b4fa49b6290f97e66529383592a1141fb581"

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
