{inputs, username, ...}: {
  imports = [
  # [(import ./aseprite/aseprite.nix)]         # pixel art editor
  # [(import ./audacious/audacious.nix)]       # music player
   import ./shell/bat.nix
   import ./shell/btop.nix
  # [(import ./cava.nix)]
   import ./chat/discord.nix           # discord
   import ./floorp/floorp.nix            # firefox based browser
   import ./gaming/gaming.nix
   (import ./dev/git.nix
  # [(import ./gtk.nix)]
  # [(import ./hyprland)]
  # [(import ./kitty.nix)]
  # [(import ./mako.nix)]                      # notification deamon
  # [(import ./micro.nix)]                     # nano replacement
  # [(import ./nvim.nix)]
   import ./obs-studio/obs-studio.nix
   import ./packages.nix
   import ./qbittorrent/qbittorrent.nix
  # [(import ./scripts/scripts.nix)]           # personal scripts
   import ./shell/starship.nix
  # [(import ./swaylock.nix)]
  # [(import ./vscodium.nix)]
   import ./terminals/warp.nix
  # [(import ./waybar)]
  # [(import ./wofi/wofi.nix)]
   import ./youtube-music/yt-music.nix
   import ./shell/zsh.nix
  ];
}
