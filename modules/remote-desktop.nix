# modules/remote-desktop.nix
{pkgs, ... }:

{

  services.xserver.enable = true;
  services.openssh.settings.X11Forwarding = true;
  services.xrdp = {
    enable = true;
    openFirewall = true;
    defaultWindowManager = "cinnamon-session";
  };
}
