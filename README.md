<!-- markdownlint-configure-file
{
  "required-headings": {
    "headings": [
      "# homebrew-soundid-reference",
      "*",
      "## Installation",
      "*",
      "## Usage",
      "*",
      "## Sponsor",
      "*",
      "## Development",
      "*",
      "## Testing",
      "*",
      "# Author(s) / Credits",
      "*",
      "# License",
      "*"
    ]
  }
}
-->

# homebrew-soundid-reference

[![ci](https://github.com/LyraPhase/homebrew-soundid-reference/actions/workflows/ci.yml/badge.svg)](https://github.com/LyraPhase/homebrew-soundid-reference/actions/workflows/ci.yml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![pre-commit](https://github.com/LyraPhase/homebrew-soundid-reference/actions/workflows/pre-commit.yml/badge.svg)](https://github.com/LyraPhase/homebrew-soundid-reference/actions/workflows/pre-commit.yml)

Install SoundID Reference via Homebrew

This recipe is designed to install the latest SoundID Reference
(rebranded from former "Sonarworks Reference 4") via the MacOS installer.
Note that Homebrew project will reject Casks or Formulae that have volatile
download links
(see [homebrew-cask#57634](https://github.com/Homebrew/homebrew-cask/pull/57634)).
Currently this Cask appears to suffer from that issue.  For now, I will try to
maintain this here in incubation phase because it is useful to me and might be
for others. :smile:

## Installation

First, make sure you have installed [`homebrew`](https://brew.sh) and
[`homebrew-cask`](http://caskroom.io/) if you haven't yet.

Then, run the following in your command-line:

    brew tap lyraphase/homebrew-soundid-reference

## Usage

**Note**: For info run:

    brew info --cask soundid-reference

Once the tap is installed, you can install `soundid-reference`!

    brew install --cask soundid-reference

To uninstall run:

    brew uninstall --cask soundid-reference

## Sponsor

If you find this project useful and appreciate my work,
would you be willing to click one of the buttons below to Sponsor this project
and help me continue?

<!-- markdownlint-disable MD013  -->
| Method   | Button                                                                                                                 |
| :------- | :--------------------------------------------------------------------------------------------------------------------: |
| GitHub   | [💖 Sponsor](https://github.com/sponsors/trinitronx)                                                                   |
| Liberapay| [![Donate using Liberapay](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/trinitronx/donate)  |
| PayPal   | [![Donate with PayPal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://paypal.me/JamesCuzella) |
<!-- markdownlint-enable MD013  -->

Every little bit is appreciated! Thank you! 🙏

## Development

If you wish to contribute to this Cask, there is a helper `Makefile` with somei
useful targets.

To checkout this repo and install in development mode:

    git clone https://github.com/LyraPhase/homebrew-soundid-reference.git
    cd homebrew-soundid-reference
    make install

This will install a symbolic link to this git repo under:i

    $(brew --repo)/Library/Taps/LyraPhase/homebrew-soundid-reference

Then, you may edit and test the Homebrew Cask recipe from the cloned git repo
file location.

## Testing

To test:

    make test

# Author(s) / Credits

Author:: James Cuzella ([@trinitronx][keybase-id])

# License

Copyright (C) © 🄯  2022 James Cuzella

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

[keybase-id]: https://gist.github.com/trinitronx/aee110cbdf55e67185dc44272784e694
