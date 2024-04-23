{ hostname, config, pkgs, ...}:

let 
  myAliases = {
   
    # Utils
    c = "clear";
    cd = "z";
    cat = "bat";
    nano = "micro";
    code = "codium";
    dsize = "du -hs";
    findw = "grep -rl";


    l = "eza --icons  -a --group-directories-first -1"; #EZA_ICON_SPACING=2
    ll = "eza --icons  -a --group-directories-first -1 --no-user --long";
    tree = "eza --icons --tree --group-directories-first";
   # ".." = "cd ..";

    # NixOS
    cdnix = "cd ~/nixos-config && codium ~/nixos-config";
    ns = "nix-shell --run zsh";
    nix-shell = "nix-shell --run zsh";
    nix-switch = "sudo nixos-rebuild switch --flake ~/nixos-config#nixos";
    nix-switchu = "sudo nixos-rebuild switch --upgrade --flake ~/nixos-config#nixos";
    nix-flake-update = "sudo nix flake update ~/nixos-config#";
    nix-clean = "sudo nix-collect-garbage && sudo nix-collect-garbage -d && sudo rm /nix/var/nix/gcroots/auto/* && nix-collect-garbage && nix-collect-garbage -d";
    # nix-clean = "sudo nix-collect-garbage -d";
    # nix-cleanold = "sudo nix-collect-garbage --delete-old";
    # nix-cleanboot = "sudo /run/current-system/bin/switch-to-configuration boot";

    
    # Git
    ga   = "git add";
    gaa  = "git add --all";
    gs   = "git status";
    gb   = "git branch";
    gm   = "git merge";
    gpl  = "git pull";
    gplo = "git pull origin";
    gps  = "git push";
    gpst = "git push --follow-tags";
    gpso = "git push origin";
    gc   = "git commit";
    gcm  = "git commit -m";
    gtag = "git tag -ma";
    gch  = "git checkout";
    gchb = "git checkout -b";
    gcoe = "git config user.email";
    gcon = "git config user.name";
    
 };
in
{
  programs.zsh = {
    enable = true;
    enableCompleteion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "fzf" ];
    };
    shellAliases = myAliases;
  };
#   initExtraFirst = ''
#       DISABLE_MAGIC_FUNCTIONS=true
#       export "MICRO_TRUECOLOR=1"
#     '';
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
