{ pkgs, config, ...}:

{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
     advanced-scene-switcher
   ];
  };
}
