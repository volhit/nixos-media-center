{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.volhit = {
    isNormalUser = true;
    description = "let it be a kodi user";
    extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      # spotify # FIXIT may be enabled on x86_64 cpu
      youtube-music
      brave
      # discord
      # tdesktop
      # vscode
    ];
  };

  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";
}
