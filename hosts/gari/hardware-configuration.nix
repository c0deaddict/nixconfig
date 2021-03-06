# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "nvme" "uas" "usbhid" "usb_storage" "sd_mod" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/nix" =
    { device = "/dev/disk/by-uuid/2f57ab4b-68b5-4812-a3b8-b84a0b169621";
      fsType = "xfs";
    };

  boot.initrd.luks.devices."slash".device = "/dev/disk/by-uuid/b2774862-c0b5-486e-9763-233fef2fecc7";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/2AEB-0F7F";
      fsType = "vfat";
    };

  swapDevices = [ ];

  nix.maxJobs = lib.mkDefault 4;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
