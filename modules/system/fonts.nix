{ pkgs, config, lib, ...}:

{
  fonts.fonts = with pkgs; [
    source-code-pro
    font-awesome
    corefonts
    (nerdfonts.override {
      fonts = [
	  "FiraCode"
      ];
    })
  ];
}
