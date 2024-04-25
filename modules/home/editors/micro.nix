{ pkgs, ... }:
{
  programs.micro = {
    enable = true;

  settings = {
    "*.nix" = {"tabsize" = 2;};
    "*.ml"  = {"tabsize" = 2;};
    "tabstospaces" = true;
   };
 };

}
