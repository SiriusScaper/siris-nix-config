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

  console = {
    font = "ter-124b";
    keyMap = "us";
    packages = with pkgs; [
      terminus_font
    ];
  };

}
