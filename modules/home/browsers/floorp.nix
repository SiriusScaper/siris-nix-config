{ pkgs, ... }: 
{
  home.packages = (with pkgs; [ floorp-unwrapped ]);
}
