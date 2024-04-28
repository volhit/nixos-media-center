{ pkgs, ... }:

{
  # Setup Env Variables
  # environment.variables.SPOTIFY_PATH = "${pkgs.spotify}/"; # FIXIT it may be enabled in x86_64 cpu
  environment.variables.JDK_PATH = "${pkgs.jdk11}/";
  environment.variables.NODEJS_PATH = "${pkgs.nodePackages_latest.nodejs}/";

  environment.variables.CI = "1";
  # environment.variables.CLIPBOARD_EDITOR = "hx";
  environment.variables.CLIPBOARD_NOAUDIO = "1";
  # environment.variables.CLIPBOARD_NOGUI = "1";
  # environment.variables.CLIPBOARD_NOPROGRESS = "1";
  # environment.variables.CLIPBOARD_NOREMOTE = "1";
  environment.variables.CLIPBOARD_SILENT = "1";
  LIBGL_ALLWAYS_SOFTWARE = "1";
}
