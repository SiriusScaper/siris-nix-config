{inputs, username, host, ...}: {
  imports = [
   ./security/1password.nix
   ./security/protonvpn.nix
  # [(import ./aseprite/aseprite.nix)]         # pixel art editor
  # [(import ./audacious/audacious.nix)]       # music player
   ./shell/bat.nix
   ./shell/btop.nix
  # [(import ./cava.nix)]
   ./chat/discord.nix                         # discord
   ./chat/betterdiscordctl.nix
   ./browsers/floorp.nix                       # firefox based browser
   ./browsers/librewolf.nix
   ./dev/git.nix
   ./dev/vscode-fhs.nix
  # [(import ./gtk.nix)]
  # [(import ./hyprland)]
  # [(import ./mako.nix)]                      # notification deamon
   ./editors/micro.nix			       # nano replacement
   ./editors/lunarvim.nix
   ./editors/nvim.nix
   ./gaming/heroic-launcher.nix
   ./gaming/protonup.nix
   ./gaming/protontricks.nix
   ./media/jellyfin.nix
   ./obs-studio/obs-studio.nix
   ./packages/packages.nix
   ./qbittorrent/qbittorrent.nix
  # [(import ./scripts/scripts.nix)]           # personal scripts
   ./shell/starship.nix
  # [(import ./vscodium.nix)]
    ./terminals/warp.nix
    ./terminals/alacritty.nix
  # [(import ./waybar)]
  # [(import ./wofi/wofi.nix)]
   ./youtube-music/yt-music.nix
   ./shell/zsh.nix
   ./tools/celeste.nix
  ];
}
