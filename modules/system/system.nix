{ self, pkgs, lib, inputs, ...}: 
{
  # imports = [ inputs.nix-gaming.nixosModules.default ];
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
      substituters = [ "https://nix-gaming.cachix.org" ];
      trusted-public-keys = [ "nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4=" ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
  nixpkgs = {
#     overlays = [
#       self.overlays.default
#       inputs.nur.overlay
#     ];
  };

  environment.systemPackages = with pkgs; [
    wget
    git
    nh
    nix-output-monitor
    nvd
    rar2fs
    unrar
    _7zz
    proton-pass
    kdePackages.kdeconnect-kde
    nexusmods-app
  ];

  #Enable Applications
  programs.partition-manager.enable = true;
  programs.kdeconnect.enable = true;


   programs.zsh.enable = true;
    programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    # pinentryFlavor = "";
  };

  security.rtkit.enable = true;
  #security.pam.services.swaylock = { };

  services.flatpak.enable = true;

  systemd.services.flatpak-repo = {
    wantedBy = [ "multi-user.target" ];
    path = [ pkgs.flatpak ];
    script = ''
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    '';
  };

  # Might be unnecessary after explicit sync changes introduced in plasma 6.1 and kernel 6.10/Nvidia 555
  #nvironment.sessionVariables.NIXOS_OZONE_WL = "1";

  time.timeZone = "America/Los_Angeles";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.11";
}
