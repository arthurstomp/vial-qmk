# Quantum Mechanical Keyboard Firmware

[![Current Version](https://img.shields.io/github/tag/qmk/qmk_firmware.svg)](https://github.com/qmk/qmk_firmware/tags)
[![Discord](https://img.shields.io/discord/440868230475677696.svg)](https://discord.gg/qmk)
[![Docs Status](https://img.shields.io/badge/docs-ready-orange.svg)](https://docs.qmk.fm)
[![GitHub contributors](https://img.shields.io/github/contributors/qmk/qmk_firmware.svg)](https://github.com/qmk/qmk_firmware/pulse/monthly)
[![GitHub forks](https://img.shields.io/github/forks/qmk/qmk_firmware.svg?style=social&label=Fork)](https://github.com/qmk/qmk_firmware/)

This is a keyboard firmware based on the [tmk\_keyboard firmware](https://github.com/tmk/tmk_keyboard) with some useful features for Atmel AVR and ARM controllers, and more specifically, the [OLKB product line](https://olkb.com), the [ErgoDox EZ](https://ergodox-ez.com) keyboard, and the Clueboard product line.

## Documentation

* [See the official documentation on docs.qmk.fm](https://docs.qmk.fm)

The docs are powered by [VitePress](https://vitepress.dev/). They are also viewable offline; see [Previewing the Documentation](https://docs.qmk.fm/#/contributing?id=previewing-the-documentation) for more details.

You can request changes by making a fork and opening a [pull request](https://github.com/qmk/qmk_firmware/pulls).

# Fork Documentation

I'm using a Silakka54, so this fork will be focused on it (:

![Silakka54](https://i.imgur.com/JrsS0kY.png)

Silakka54 is a RP2040 Zero based 54-key column staggered split keyboard. PCB uses hotswap sockets. Design is inspired from REVIUNG41 and Corne keyboards.

* Keyboard Maintainer: [Squalius-cephalus](https://github.com/Squalius-cephalus)
* Hardware Supported: Silakka54 PCB
* Hardware Availability: https://github.com/Squalius-cephalus/silakka54


## Compiling & Flashing for each specific side

### Helper scripts

*Variables*

- keymap: arthurstomp

## Left side

Find the keyboard forlder for silakka54 in this repo - `keyboards/silakka54`.

Open your keymap folder and edit `config.h` - in this case the keymap is called `arthurstomp`.

If `MASTER_RIGHT` isn defined, comment out `// #define MASTER_RIGHT`,

Compile using vial - `make silakka54:arthurstomp`

Rename `silakka54_arthurstomp.uf2` to `silakka54_arthurstomp_left.uf2` 

Flash it using `qmk` - `qmk flash -kb silakka54 -km arthurstomp -bl uf2-split-left ./silakka54_arthurstomp_left.u2`. After executing this command you will need to connect to the left half in booloader mode - without the half connect, hold the boot button and connect the cable.

## Right side

Find the keyboard forlder for silakka54 in this repo - `keyboards/silakka54`

Open your keymap folder and edit `config.h` - in this case the keymap is called `arthurstomp`

If `MASTER_RIGHT` isn't defined, add `#define MASTER_RIGHT` at the end of the file

Compile using vial - `make silakka54:arthurstomp`

Rename `silakka54_arthurstomp.uf2` to `silakka54_arthurstomp_right.uf2` 

Flash it using `qmk` - `qmk flash -kb silakka54 -km arthurstomp -bl uf2-split-right ./silakka54_arthurstomp_right.u2`. After executing this command you will need to connect to the right half in booloader mode - without the half connect, hold the boot button and connect the cable.

## Supported Keyboards

* [Planck](/keyboards/planck/)
* [Preonic](/keyboards/preonic/)
* [ErgoDox EZ](/keyboards/ergodox_ez/)
* [Clueboard](/keyboards/clueboard/)
* [Cluepad](/keyboards/clueboard/17/)
* [Atreus](/keyboards/atreus/)

The project also includes community support for [lots of other keyboards](/keyboards/).

## Maintainers

QMK is developed and maintained by Jack Humbert of OLKB with contributions from the community, and of course, [Hasu](https://github.com/tmk). The OLKB product firmwares are maintained by [Jack Humbert](https://github.com/jackhumbert), the Ergodox EZ by [ZSA Technology Labs](https://github.com/zsa), the Clueboard by [Zach White](https://github.com/skullydazed), and the Atreus by [Phil Hagelberg](https://github.com/technomancy).

## Official Website

[qmk.fm](https://qmk.fm) is the official website of QMK, where you can find links to this page, the documentation, and the keyboards supported by QMK.
