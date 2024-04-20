{inputs, username, host, ...}: {
  imports = [
  # [(import ./aseprite/aseprite.nix)]         # pixel art editor
  # [(import ./audacious/audacious.nix)]       # music player
   ./shell/bat.nix
   ./shell/btop.nix
  # [(import ./cava.nix)]
   ./chat/discord.nix           # discord
   ./floorp/floorp.nix            # firefox based browser
   ./gaming/gaming.nix
   ./dev/git.nix
  # [(import ./gtk.nix)]
  # [(import ./hyprland)]
  # [(import ./kitty.nix)]
  # [(import ./mako.nix)]                      # notification deamon
  # [(import ./micro.nix)]                     # nano replacement
  # [(import ./nvim.nix)]
   ./obs-studio/obs-studio.nix
   ./packages.nix
   ./qbittorrent/qbittorrent.nix
  # [(import ./scripts/scripts.nix)]           # personal scripts
   ./shell/starship.nix
  # [(import ./swaylock.nix)]
  # [(import ./vscodium.nix)]
    ./terminals/warp.nix
  # [(import ./waybar)]
  # [(import ./wofi/wofi.nix)]
   ./youtube-music/yt-music.nix
   ./shell/zsh.nix
  ];
}
