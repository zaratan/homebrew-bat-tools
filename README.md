# homebrew-bat-tools

A [Homebrew](https://brew.sh) tap for tools I use around bats — acoustic recording, TeensyRecorders, profile editing, and similar field gear.

## Installation

```sh
brew tap zaratan/bat-tools
```

Then install one of the casks:

```sh
brew install teensy-profiles-editor
```

## Available casks

| Cask                     | Description                                              | Upstream                                                                                          |
| ------------------------ | -------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `teensy-profiles-editor` | GUI editor for TeensyRecorders configuration profiles    | [zaratan/TeensyRecorders_ProfilesEditor](https://github.com/zaratan/TeensyRecorders_ProfilesEditor) |

## Updating versions

A Github action will fetch for new versions every day at 6am (UTC) and create a new PR for each new update.

## Reporting issues

For bugs in the tap (cask definitions, CI, etc.), open an issue here. For bugs in the apps themselves, report them upstream.
