# scoop-shim-symlinks

[Scoop](https://scoop.sh) is pretty sweet, and I use it to install [all](https://neovim.io) [the](https://aka.ms/powershell) [stuff](https://starship.rs) [I](https://aka.ms/terminal) [love](https://nerdfonts.com). However, part of its path and version management strategy is to place a shim executable in a single known location that thunks to the real binary. Long story short, it has [issues](https://github.com/lukesampson/scoop/issues/3634) and other people have tried to [work around it](https://github.com/71/scoop-better-shimexe).

Rather than try to find a better shim, this simple script sets up symbolic links instead. This gets me the closest-to-genuine experience with the tools that I use. And Scoop already uses directory junctions in its version management, so this isn't really adding any strange new dependencies.

Note that to create a symlink on Windows 10, you need the SeCreateSymbolicLinkPrivilege. The simplest ways to get this are to be in the Administrators group, or to enable "Developer mode" in the "Update & Security" settings page.
