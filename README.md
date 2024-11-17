>[!WARNING]
> This config, especially the documentation, is still WiP, use at your own risk.

>[!NOTE]
> A lot of what you see this is based on [Frost-Phoenix's config](https://github.com/Frost-Phoenix/nixos-config)
> so if you happen to like/use this one, go give him some love too.

# 📚 Layout

- [flake.nix](flake.nix) base of the configuration
- [hosts](hosts) 🌳 per-host configurations that contain machine specific configurations
    - [laptop](hosts/laptop/) 💻 Laptop specific configuration
    - [vm](hosts/vm/) 🗄️ VM specific configuration -> not used, on my TODO list
- [modules](modules) 🍱 modularized NixOS configurations
    - [core](modules/core/) Core NixOS configuration
    - [home(modules/home/) 🏠 my [Home-Manager](https://github.com/nix-community/home-manager) config
        - [common]
        - [personal]
        - [work] -> some specific packages for usage on WSL
- [pkgs](flake/pkgs) 📦 Packages Build from source -> not used
- [wallpapers](wallpapers/) 🌄 wallpapers collection

# 📦 Packages
|                             | NixOS + Hyprland                                                                              |
| --------------------------- | :---------------------------------------------------------------------------------------------:
| **Window Manager**          | [Hyprland][Hyprland]
| **Bar**                     | [Waybar][Waybar] |
| **Application Launcher**    | [rofi][rofi] |
| **Notification Daemon**     | [swaync][swaync] |
| **Terminal Emulator**       | [Kitty][Kitty] |
| **Shell**                   | [zsh][zsh] + [antidote][antidote] + [Starship][Starship] |
| **Text Editor**             | [Neovim][Neovim] |
| **network management tool** | [NetworkManager][NetworkManager] + [network-manager-applet][network-manager-applet] |
| **System resource monitor** | [bottom][bottom] |
| **File Manager**            | [nemo][nemo] + [yazi][yazi] |
| **Fonts**                   | [CascadiaCode Nerd Font][Nerd fonts] + [JetBrainsMono Nerd Font][Nerd fonts] |
| **Color Scheme**            | [Gruvbox Dark Hard][Gruvbox] |
| **Cursor**                  | [Bibata-Modern-Ice][Bibata-Modern-Ice] |
| **Icons**                   | [Papirus-Dark][Papirus-Dark] |
| **Lockscreen**              | [Hyprlock][Hyprlock] + [Swaylock-effects][Swaylock-effects] |
| **Image Viewer**            | [qview][qview] |
| **Media Player**            | [mpv][mpv] |
| **Screenshot Software**     | [grimblast][grimblast] |
| **Screen Recording**        | [wf-recorder][wf-recorder] |
| **Clipboard**               | [wl-clip-persist][wl-clip-persist] |
| **Color Picker**            | [hyprpicker][hyprpicker] |

# 📥 Installation
>[!TODO]

# Home-server deployment notes
- use `nixos-rebuild switch --flake .#server --target-host <user>@<ip> --use-remote-sudo`
- <user> will need to be declared in `nix.settings.trusted-users`
- building will be done on localhost which then tries to connect to the server through ssh
    - might be a good idea to also add localhost sshkey to server

# 🎯 Things I'd like to implement further

- [X] secure boot with lanzaboote
- [ ] secret management with sops or agenix
- [ ] dev environments
- [ ] VM configuration and usage
- [ ] more themes

# 👥 Credits

Places where I drew inspiration and knowledge from:
- [Frost-Phoenix/nixos-config](https://github.com/Frost-Phoenix/nixos-config): the foundation of this config
- [ryan4yin/nix-config](https://github.com/ryan4yin/nix-config): one of the first NixOS configs I looked into
and got me really interested in NixOS
- [NixOS & Flakes Book](https://nixos-and-flakes.thiscute.world/preface): insanely good documentation

<!-- Links -->
[Hyprland]: https://github.com/hyprwm/Hyprland
[Wezterm]: https://wezfurlong.org/wezterm/index.html
[Starship]: https://github.com/starship/starship
[Waybar]: https://github.com/Alexays/Waybar
[rofi]: https://github.com/lbonn/rofi
[Btop]: https://github.com/aristocratos/btop
[nemo]: https://github.com/linuxmint/nemo/
[yazi]: https://github.com/sxyazi/yazi
[zsh]: https://ohmyz.sh/
[oh-my-zsh]: https://ohmyz.sh/
[Swaylock-effects]: https://github.com/mortie/swaylock-effects
[Hyprlock]: https://github.com/hyprwm/hyprlock
[audacious]: https://audacious-media-player.org/
[mpv]: https://github.com/mpv-player/mpv
[VSCodium]:https://vscodium.com/
[Neovim]: https://github.com/neovim/neovim
[grimblast]: https://github.com/hyprwm/contrib
[qview]: https://interversehq.com/qview/
[swaync]: https://github.com/ErikReider/SwayNotificationCenter
[Nerd fonts]: https://github.com/ryanoasis/nerd-fonts
[NetworkManager]: https://wiki.gnome.org/Projects/NetworkManager
[network-manager-applet]: https://gitlab.gnome.org/GNOME/network-manager-applet/
[wl-clip-persist]: https://github.com/Linus789/wl-clip-persist
[wf-recorder]: https://github.com/ammen99/wf-recorder
[hyprpicker]: https://github.com/hyprwm/hyprpicker
[Gruvbox]: https://github.com/morhetz/gruvbox
[Papirus-Dark]: https://github.com/PapirusDevelopmentTeam/papirus-icon-theme
[Bibata-Modern-Ice]: https://www.gnome-look.org/p/1197198
[maxfetch]: https://github.com/jobcmax/maxfetch
