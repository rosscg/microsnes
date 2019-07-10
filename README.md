
#### Setting Up the System
The emulator connects to the display by HDMI. The USB plug powers the system, so this can either be plugged into the TV's USB port, or if this is not available: a battery bank, computer, or phone charger USB port will work.


##### Collect Roms
* You will need to supply your own game (rom) files for the system. You can find these online from various sources.
* Unzip RetroPie.zip to create a directory structure.
* Copy your roms to the relevant system's folder in the contained `/RetroPie/roms` directory.
* If you are using Gameboy Advance roms, you must search for a 'gba bios' and copy `gba_bios.bin` into the `/RetroPie/BIOS` folder.
    ###### Note:
    * The folders in `/RetroPie/roms` represent which systems the emulator should be able to play, though not all have been tested.
    * The system has been tested with many classic Nintendo roms, but the quality of roms can vary so they may not all work.
    * [SNES games](https://en.wikipedia.org/wiki/Super_FX#List_of_games) which used the Super-FX chip may run poorly.


##### Copy Files to Emulator
* Plug the controller into a power source with the USB plug and give it a moment to boot.
* On your computer, connect to the Pi's wifi network: `MicroSNES.com` with the password: `microsnes`
* Follow the steps below based on your operating system:

  ###### Mac OSX:
  * Open `osxAddPermissions.app` (you may need to right-click and select open, if it gives the 'unidentified developer' error).
  * Open `CopyRoms.command` and enter the password `microsnes` when prompted.

  ###### Windows:
  * Unzip the `cygwin64` folder.
  * Open `CopyRomsWindows.bat` and enter the password `microsnes` when prompted.

  ###### Linux:
  * Open a terminal window and navigate to this folder.
  * Run the command: `rsync -r --exclude=.DS_Store --exclude=__MACOSX ./RetroPie/ gamer@192.168.4.1:RetroPie/` and enter the password `microsnes`.

  ###### SFTP client:
  * Use an SFTP client (e.g. [Cyberduck](https://cyberduck.io)) with the address: `sftp://192.168.4.1`
    * Username: `gamer`
    * Password: `microsnes`


##### Enabling Bluetooth
If you plan to use bluetooth to connect to a second player controller, run the `EnableBluetooth.command` or `EnableBluetoothWindows.bat` when you're connected to the emulator's wifi network (having BT enabled slightly increases boot time).


### Using the System
* When playing a game, press `Start` + `Select` to exit.
* `Select` + `R` will create a save point.
* `Select` + `L` will load the point.
