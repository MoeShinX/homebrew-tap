cask "zeeterm" do
  version "1.0.6"
  sha256 "5a84db22d803ae6f8fac4afccdf05dd4f2218d0be0d392a62c8f81ec11ee639e"

  url "https://github.com/MoeShinX/ZeeTerm/releases/download/v#{version}/ZeeTerm-#{version}-macos-arm64.zip"
  name "ZeeTerm"
  desc "Native SSH, SFTP, Telnet and serial terminal client"
  homepage "https://zeeterm.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "ZeeTerm.app"

  zap trash: "~/Library/Application Support/ZeeTerm"

  caveats <<~EOS
    ZeeTerm for macOS is not signed or notarized by Apple yet.

    The first time you open it, macOS blocks it. Open
    System Settings > Privacy & Security and click "Open Anyway".

    When macOS asks whether ZeeTerm may use your keychain, choose
    "Always Allow" (this can happen again after each update).

    ZeeTerm does not update itself on macOS. To update, run:
      brew upgrade --cask zeeterm
  EOS
end
