{ pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    pyprland
    hyprpicker
    hyprcursor
    hypridle
    hyprpaper

    alacritty
    wezterm
    cool-retro-term

    starship
    helix

    qutebrowser
    zathura
    mpv
    imv
  ];
}
