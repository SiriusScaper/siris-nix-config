{ pkgs, config, lib, ... }:

{  

  services = {
    # Devmon monitors for new storage devices. Udisks2 allows apps like Nautilus to query and manipulate
    # storage devices. Gnome-keyring enables apps to display an auth dialog when attempting to perform privileged operations,
    # like mounting another partition.
    #devmon.enable = true;
    udisks2.enable = false;


    # Trim SSD in the background, once every month.
    # You can set this to "weekly";
    fstrim = {
      enable = true;
      interval = "monthly";
    };

    # Enable CUPS to print documents
    printing.enable = true;

    # Enable autodiscovery of network printers
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
   
    # Enable SSH
    openssh.enable = true; 

    # Framework functionality
    #logind = {
     # lidSwitch = "suspend";
      #powerKey = "suspend";
      #powerKeyLongPress = "reboot";
    #};
  };
}
