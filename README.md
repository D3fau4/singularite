# Vortex
Simple fork of Singularité, slimmest, transparent CFW distro.
Everything you need to get started, in a neatly packaged file.

## How to install
1) Download latest release.
2) Copy `sd` contents into the root of your SD card.
3) Push `hekate_ctcaer_4.9.1.bin` with your preferred method.
4) Done!

## What's included?
- Pure and full **Atmosphere**. Not gutted, not chopped.
- **Sigpatches** for Atmosphere.
- Pre-configured **Hekate v5.0.1**.
- **Homebrew Loader**.
- **Homebrew Menu**.
- **Checkpoint**.
- **FTPD**.
- ~~**SwitchThemeNX**.~~ (Removed temporarily. You can download it from their [repo](https://github.com/exelix11/SwitchThemeInjector).)
- **NX-Shell**.
- **KipSelect**.
- **Tinfoil**, by Adubbz.
- **Monochrome**, a black and white theme for **Homebrew Menu**.
- **Black**, a pitch black theme for your Home Menu, Lockscreen, All Apps, and Settings. Check `DumpingFilesForThemes.md` for more info.

## Compile on your own
1) Make sure your development environment is complete:
   - devkitpro, devkitARM, devkitA64
   - libnx
   - SDL2
   - for other dependencies of included submodules, check their respective pages.
2) Clone this repo: `git clone --recursive https://github.com/D3fau4/Vortex.git`
3) Run `make` or `make release`

## Notes:
- It may not be possible to build NX-Shell right now. For more info, visit NX-Shell repo, or contact joel16.
  - For this reason, Vortex downloads NX-Shell at latest release for the time being.
  - As soon as it's possible to compile it without special requirements, makefile will be updated.
- Tinfoil is added as prebuilt, as it's not actively being developed, and the history of it is rather hazy.
- Instead of `hekate_ctcaer_5.0.1.bin`, you can push `fusee-primary.bin` for Atmosphere 0.9.2.
  - You can find it in `_dist/bootloader/payloads` folder.

## Credits
- @SciresM, and everyone in Atmosphere's credits.
- The-4n, and everyone else who worked on sigpatches.
- CTCaer, and everyone in Hekate's credits.
- Everyone that contributed to `nx-hbloader`.
- Everyone that contributed to `nx-hbmenu`.
- @BernardoGiordano, and the FlagBrew team.
- @XorTroll for `Goldleaf`.
- mtheall, and everyone that contributed to `FTPD`
- @exelix and Qcean team.
- @Sciguy429, for `KipSelect`.
- @joel16 for `NX-Shell`.
- Adubbz.
- WinterMute, and everyone that contributed to devkitpro, devkitARM, devkitA64, libnx.

## License
Licensed under GPLv3. For more information, read `LICENSE`.
Additionally, can not be used to commercial gain.
This project respects any all licenses of its submodules. See submodule pages for their respective licenses.
