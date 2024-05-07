{ pkgs, ...}:
{
  home.packages = (with pkgs; [ betterdiscordctl ]);
}
