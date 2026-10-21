# LLMeter

Downloads and Homebrew tap for **LLMeter**, a macOS menu bar app that shows how many tokens Claude used
today and what that would cost at API list prices. It reads the local session logs of the Claude desktop app
and the Claude CLI and needs neither network access to Anthropic nor credentials.

## Install

```bash
brew install --cask appnoe/llmeter/llmeter
```

Or [download the disk image](https://github.com/appnoe/homebrew-llmeter/releases/latest/download/LLMeter.dmg)
of the latest version (all versions: [releases](https://github.com/appnoe/homebrew-llmeter/releases)),
open it and drag LLMeter to Applications. LLMeter requires macOS 13 Ventura or later.

LLMeter updates itself (Settings › Updates). The app is signed with a Developer ID and notarized
by Apple.

## Contents

- `Casks/llmeter.rb` – the Homebrew cask
- `appcast.xml` – the update feed read by the app (Sparkle)
- Releases – the signed and notarized disk images

This repository is updated automatically by the release script of the (private) source repository.
