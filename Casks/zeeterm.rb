cask "zeeterm" do
  version "1.0.5"
  sha256 "1ea21a7c221376a51baa93cdba24fa763db03adf140402c355e61a9dfec5d6e5"

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
