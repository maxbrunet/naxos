# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [
      (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "usb_storage" "sd_mod" "sdhci_pci" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    {
      device = "/dev/disk/by-uuid/64f29e29-4700-4395-9c59-50954ab194b0";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."cryptroot".device = "/dev/disk/by-uuid/802e27d6-6be3-4602-85a9-6397263a0b12";

  fileSystems."/boot/efi" =
    {
      device = "/dev/disk/by-uuid/B3E0-F61A";
      fsType = "vfat";
    };

  swapDevices = [ ];

  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
