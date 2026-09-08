{ config, pkgs, ... }:

{
  boot.extraModulePackages = with config.boot.kernelPackages; [
    v4l2loopback
  ];

  boot.kernelModules = [
    "v4l2loopback"
  ];

  boot.extraModprobeConfig = ''
    options v4l2loopback devices=1 video_nr=0 card_label="Camera" exclusive_caps=1
  '';

  users.users.abdi.extraGroups = [
    "video"
  ];

  environment.systemPackages = with pkgs; [
    v4l-utils
    ffmpeg
  ];
}
