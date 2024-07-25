{inputs, username, host, ...}: {
  imports = [

   # Security
   ./security/1password.nix
   ./security/protonvpn.nix

  # [(import ./aseprite/aseprite.nix)]         # pixel art editor
  # [(import ./audacious/audacious.nix)]       # music player
  # [(import ./cava.nix)]

   # Chat clients
   ./chat/discord.nix                         # discord
   ./chat/betterdiscordctl.nix
   ./chat/element.nix

   # Browsers
   #./browsers/floorp.nix                       # firefox based browser
   ./browsers/librewolf.nix
   ./browsers/chromium.nix
   ./browsers/firefox.nix
   ./browsers/brave.nix

   # Dev Tools
   ./dev/git.nix
   ./dev/vscode-fhs.nix
   
   # Editors
   ./editors/micro.nix			       # nano replacement
   ./editors/lunarvim.nix
   ./editors/nvim.nix
   ./editors/zed-editor.nix

   # Gaming
   ./gaming/heroic-launcher.nix
   ./gaming/protonup.nix
   ./gaming/protontricks.nix
   ./gaming/steamtinkerlaunch.nix
   ./gaming/lutris.nix
   
   # Media
   ./media/yt-music.nix
   ./media/jellyfin.nix
   ./media/obs-studio.nix

   # Packages
   ./packages/packages.nix

   # Shell utils
   ./shell/starship.nix
   ./shell/zsh.nix
   ./shell/bat.nix
   ./shell/btop.nix

   # Terminals
    ./terminals/warp.nix
    ./terminals/alacritty.nix

  # Tools/Utilities
   ./tools/celeste.nix
   ./tools/p7zip.nix
   ./tools/bottles.nix
   ./tools/qbittorrent.nix
  ];
}
