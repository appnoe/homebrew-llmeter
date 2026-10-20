# BeanCounter

Downloads and Homebrew tap for **BeanCounter**, a macOS menu bar app that shows how many tokens Claude used
today and what that would cost at API list prices. It reads the local session logs of the Claude desktop app
and the Claude CLI and needs neither network access to Anthropic nor credentials.

## Install

```bash
brew install --cask appnoe/beancounter/beancounter
```

Or [download the disk image](https://github.com/appnoe/homebrew-beancounter/releases/latest/download/BeanCounter.dmg)
of the latest version (all versions: [releases](https://github.com/appnoe/homebrew-beancounter/releases)),
open it and drag BeanCounter to Applications. BeanCounter requires macOS 13 Ventura or later.

BeanCounter updates itself (update menu in its window). The app is signed with a Developer ID and notarized
by Apple.

## Contents

- `Casks/beancounter.rb` – the Homebrew cask
- `appcast.xml` – the update feed read by the app (Sparkle)
- Releases – the signed and notarized disk images

This repository is updated automatically by the release script of the (private) source repository.
