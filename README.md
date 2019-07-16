
## MicroSNES Setup
The emulator connects to the display by HDMI. The USB plug powers the system, so this can either be plugged into the TV's USB port, or if this is not available: a battery bank, computer, or phone charger USB port will work.


#### Collect Roms
1. You will need to supply your own game (rom) files for the system. You can find these online from various sources.
2. Copy your roms to the relevant system's folder in the contained `/RetroPie/roms` directory.
3. If you are using Gameboy Advance roms, you must search for a 'gba bios' and copy `gba_bios.bin` into the `/RetroPie/BIOS` folder.
    ###### Note:
    * The folders in `/RetroPie/roms` represent which systems the emulator should be able to play, though not all have been tested.
    * The system has been tested with many classic Nintendo roms, but the quality of roms can vary so they may not all work.
    * SNES games which used the [Super-FX chip](https://en.wikipedia.org/wiki/Super_FX#List_of_games) may run poorly.


#### Copy Files to Emulator
1. Plug the controller into a power source with the USB plug and give it a moment to boot.
2. On your computer, connect to the Pi's wifi network: `MicroSNES.com` with the password: `microsnes`
3. Follow the steps below based on your operating system:

    ##### Mac OSX:
    1. Open `osxAddPermissions.app` (right-click and select open if it gives the 'unidentified developer' error).
    2. Open `CopyRoms.command` and enter the password `microsnes` when prompted (you will be prompted thrice).

    ##### Windows:
    1. Unzip the `cygwin64` folder into the same directory.
    2. Open `CopyRomsWindows.bat` and enter the password `microsnes` when prompted (you will be prompted thrice).

    ##### Linux:
    1. Open a terminal window and navigate to this folder.
    2. Run the command: `rsync -rPz --exclude=.DS_Store --exclude=__MACOSX ./RetroPie/ gamer@192.168.4.1:RetroPie2/` and enter the password `microsnes`.
    3. Run the command: `ssh gamer@192.168.4.1 'mv RetroPie2 RetroPie'` and enter the password `microsnes`.

    ##### SFTP client:
    1. Use an SFTP client (e.g. [Cyberduck](https://cyberduck.io)) with the address: `sftp://192.168.4.1`
          * Username: `gamer`
          * Password: `microsnes`
    2. Copy the `RetroPie` folder into the `/home/gamer/` directory on the remote machine.


#### Enabling Bluetooth
If you plan to use bluetooth to connect to a second player controller, run the `EnableBluetooth.command` or `EnableBluetoothWindows.bat` when you're connected to the emulator's wifi network (having BT enabled increases boot time).


## Using the System
* When playing a game, press `Start` + `Select` to exit.
* `Select` + `R` will create a save point.
* `Select` + `L` will load the point.
