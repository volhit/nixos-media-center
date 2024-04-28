{ ... }:

{
  # Open ports in the firewall.
  networking.firewall.enable = true;
  # kodi remote control
  networking.firewall.allowedTCPPorts = [ 8080 ];
  # networking.firewall.allowedUDPPorts = [ 3000 ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
