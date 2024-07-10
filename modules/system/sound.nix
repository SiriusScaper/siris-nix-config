{ pkgs, config, lib, ... }: 

 # Enable sound with pipewire.

{
 # sound.enable = true;
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # lowLatency.enable = true;
    jack.enable = true;
  };
}
