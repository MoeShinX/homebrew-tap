# Homebrew tap for ZeeTerm

[ZeeTerm](https://zeeterm.app/) is a native SSH, SFTP, Telnet and serial terminal client written in Rust with GPUI.

```bash
brew install --cask moeshinx/tap/zeeterm
```

Update with `brew upgrade --cask zeeterm`, remove with `brew uninstall --cask zeeterm` (add `--zap` to also delete `~/Library/Application Support/ZeeTerm`).

The macOS build is an Apple Silicon preview (macOS 14 or later). It is **not signed or notarized by Apple yet**: the first time you open it, go to System Settings > Privacy & Security and click "Open Anyway". When macOS asks about keychain access, choose "Always Allow".

Downloads, release notes and checksums: https://github.com/MoeShinX/ZeeTerm/releases
