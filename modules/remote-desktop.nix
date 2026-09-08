# modules/remote-desktop.nix
{ ... }:

{

  services.xserver.enable = true;
  services.openssh.settings.X11Forwarding = true;
  services.xrdp = {
    enable = true;
    openFirewall = true;
    defaultWindowManager = "${pkgs.cinnamon}/bin/cinnamon-session";
  };
}
