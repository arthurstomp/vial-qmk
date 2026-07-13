# Silakka54

![Silakka54](https://i.imgur.com/JrsS0kY.png)

Silakka54 is a RP2040 Zero based 54-key column staggered split keyboard. PCB uses hotswap sockets. Design is inspired from REVIUNG41 and Corne keyboards.

* Keyboard Maintainer: [Squalius-cephalus](https://github.com/Squalius-cephalus)
* Hardware Supported: Silakka54 PCB
* Hardware Availability: https://github.com/Squalius-cephalus/silakka54

Make example for this keyboard (after setting up your build environment):

    make silakka54:default

Flashing example for this keyboard:

    make silakka54:default:flash

See the [build environment setup](https://docs.qmk.fm/#/getting_started_build_tools) and the [make instructions](https://docs.qmk.fm/#/getting_started_make_guide) for more information. Brand new to QMK? Start with our [Complete Newbs Guide](https://docs.qmk.fm/#/newbs).

## Bootloader

Enter the bootloader in 2 ways:

* **Physical boot button**: Hold BOOT button down and connect MCU to the PC
* **Keycode in layout**: Press the key mapped to `QK_BOOT` if it is available

## Compiling & Flashing for each specific side

*Variables*

- keymap: arthurstomp

## Right side

Find the keyboard forlder for silakka54 in this repo - `keyboards/silakka54`

Open your keymap folder and edit `config.h` - in this case the keymap is called `arthurstomp`

If `MASTER_RIGHT` isn't defined, add `#define MASTER_RIGHT` at the end of the file

Compile using vial - `make silakka54:arthurstomp`

Rename `silakka54_arthurstomp.uf2` to `silakka54_arthurstomp_right.uf2` 

Flash it using `qmk` - `qmk flash -kb silakka54 -km arthurstomp -bl uf2-split-right ./silakka54_arthurstomp_right.u2`. After executing this command you will need to connect to the right half in booloader mode - without the half connect, hold the boot button and connect the cable.


## Left side

Find the keyboard forlder for silakka54 in this repo - `keyboards/silakka54`

Open your keymap folder and edit `config.h` - in this case the keymap is called `arthurstomp`

If `MASTER_RIGHT` isn't defined, add `#define MASTER_RIGHT` at the end of the file

Compile using vial - `make silakka54:arthurstomp`

Rename `silakka54_arthurstomp.uf2` to `silakka54_arthurstomp_left.uf2` 

Flash it using `qmk` - `qmk flash -kb silakka54 -km arthurstomp -bl uf2-split-left ./silakka54_arthurstomp_left.u2`. After executing this command you will need to connect to the left half in booloader mode - without the half connect, hold the boot button and connect the cable.
