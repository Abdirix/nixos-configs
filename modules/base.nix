{ pkgs, ... }:

{
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  networking.networkmanager.enable = true;

  time.timeZone = "America/Chicago";
  i18n.defaultLocale = "en_US.UTF-8";

  services.openssh.enable = true;
  services.tailscale.enable = true;

  users.users.abdi = {
    isNormalUser = true;
    description = "abdi";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    git
    wget
    tree
    htop
    fastfetch
    tcpdump
    usbutils
  ];
}
