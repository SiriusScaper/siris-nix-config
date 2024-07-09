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
   ./browsers/chromium.nix
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
   ./gaming/nexusmods-app.nix
   
   
   ./media/jellyfin.nix
   ./obs-studio/obs-studio.nix
   ./packages/packages.nix
   ./qbittorrent/qbittorrent.nix

   ./shell/starship.nix

    ./terminals/warp.nix
    ./terminals/alacritty.nix


   ./youtube-music/yt-music.nix
   ./shell/zsh.nix
   ./tools/celeste.nix
   ./tools/p7zip.nix
  ];
}
