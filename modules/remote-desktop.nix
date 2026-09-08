# modules/remote-desktop.nix
{ ... }:

{

  services.xrdp = {
    enable = true;
    openFirewall = true;
    defaultWindowManager = "cinnamon-session";
  };
}
