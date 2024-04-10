{ pkgs, ... }: 
{
  programs.git = {
    enable = true;
    
    userName = "SiriusScaper";
    userEmail = "ruselmann.dev@gmail.com";
    
    extraConfig = { 
      init.defaultBranch = "main";
      credential.helper = "store";
    };
  };

  home.packages = [ pkgs.gh pkgs.git-lfs ];
}
