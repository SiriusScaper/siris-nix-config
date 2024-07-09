{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    eza                               # ls replacement
    #entr                             # perform action when file change
    fd                                # find replacement
    file                              # Show file information 
    fzf                               # fuzzy finder
    gtt                               # google translate TUI
    gtrash                            # rm replacement, put deleted files in system trash
    #hexdump
    jdk17                             # java
    lazygit
    libreoffice
    #cinnamon.nemo-with-extensions    # file manager
    fastfetch                         # system fetch util
    nix-prefetch-github
    prismlauncher                     # minecraft launcher
    #ripgrep                          # grep replacement
    libratbag
    piper
    soundwireserver                   # pass audio to android phone
    todo                              # cli todo list
    toipe                             # typing test in the terminal
    #valgrind                         # c memory analyzer
    yazi                              # terminal file manager
    youtube-dl
    #gnome.zenity
    winetricks
    wineWowPackages.wayland
    protonmail-desktop
    # Python
    python3

    #bleachbit                        # cache cleaner
    cmatrix
    #partition-manager                # partition manager
    ffmpeg
    imv                               # image viewer
    man-pages                         # extra man pages
    mpv                               # video player
    ncdu                              # disk space
    openssl
    pavucontrol                       # pulseaudio volume controle (GUI)
    playerctl                         # controller for media players
    #qalculate-gtk                    # calculator
    unzip
    wget
    xdg-utils
    pciutils
    inputs.alejandra.defaultPackage.${system}
  ]);
}
