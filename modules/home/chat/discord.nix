{ pkgs, ...}:
{
  home.packages = (with pkgs; [ betterdiscord-installer ]);
}
