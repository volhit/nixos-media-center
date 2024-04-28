{ pkgs, ... }:

{
  # Fonts
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    nerdfonts
    proggyfonts
    # nerd-font-patcher
  ];
}
