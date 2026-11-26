cask "amr" do
  version "3.0.0"
  sha256 "4c40a255e304457c26fe73fccdc81d1b8fa8fdea904020084f2d0407eaea7d74"

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
