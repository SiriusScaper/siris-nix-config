{ inputs, pkgs, config, lib, ... }:
#   #programs.hyprland.enable = true;
#   xdg.portal = {
#     enable = true;
#     wlr.enable = true;
#     xdgOpenUsePortal = true;
#     extraPortals = [
#       #pkgs.xdg-desktop-portal-hyprland
#       pkgs.xdg-desktop-portal-kde
#       pkgs.xdg-desktop-portal-gtk
#     ];
#   };
# }

        # NVIDIA and Wayland Configuration
        {
          # Enable early KMS start
          boot.kernelParams = [
            "nvidia-drm.modeset=1"
            "nvidia_drm.early_kms=1" # Enable early KMS start for potential smoother experience
          ];

          services = {
            xserver.enable = true;
            displayManager.sddm.enable = true;
            xserver.videoDrivers = [ "nvidia" ];
            xserver.desktopManager.plasma5.enable = false; # Explicitly disable Plasma 5
            desktopManager.plasma6.enable = true; # Enable Plasma 6

            libinput.enable = true;
          };


          hardware.nvidia = {
           # enable = true;
            modesetting.enable = true;
            # Uncomment if needed
            # powerManagement.enable = true;
	          package = config.boot.kernelPackages.nvidiaPackages.beta;
          };

          # Wayland Configuration
          services.displayManager.sddm.wayland = {
            enable = true;
          };

          environment.sessionVariables = {
            # Set to 1 only if explicitly needed
            # NIXOS_OZONE_WL = "1";
          };

          # Vulkan Configuration (Important for some applications)
          environment.sessionVariables.VK_ICD_FILENAMES =
            "/run/opengl-driver/share/vulkan/icd.d/nvidia_icd.json";

          # Explicitly disable Xwayland
        }
