# Homebrew Tap for Apple Music Remote (AMR)

Official [Homebrew](https://brew.sh) Cask tap for **[Apple Music Remote (AMR)](https://github.com/1orgar/amr)** — native pure-Swift macOS CoreAudio server, 64-bit Studio DSP (`7EC DSD256 DoP` & `768 kHz LNS15 NOS`), iPhone-mic Room `Auto-PEQ`, and `#000000` OLED remote for Apple Music.

- **Website & Interactive Signal Lab:** [https://amraudio.app](https://amraudio.app)
- **Source Repository:** [https://github.com/1orgar/amr](https://github.com/1orgar/amr)

## Install

```bash
brew install --cask 1orgar/tap/amr
```

*(Signed with Apple Developer ID & Notarized by Apple • Universal 2 `arm64 + x86_64` • macOS 14.0 Sonoma or newer)*

## Upgrade

```bash
brew upgrade --cask amr
```

## Uninstall

```bash
# Remove app bundle only
brew uninstall --cask amr

# Remove app bundle + local caches & preferences
brew uninstall --cask --zap amr
```

## License

MIT License — Copyright (c) 2026 Kirill Sholokhov (`@1orgar`).
