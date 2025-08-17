# Upgrade NixOS & Home-Manager(MODULE) dari **old.version** ke **new.version**

Dokumentasi ini menjelaskan langkah-langkah untuk mengganti channel
**NixOS** dan **Home-Manager** dari versi **24.11** ke **25.05**.

------------------------------------------------------------------------

## 1. Cek Channel Aktif

``` bash
doas nix-channel --list
```

Biasanya hasilnya:
home-manager https://github.com/nix-community/home-manager/archive/release-24.11.tar.gz
nixos https://nixos.org/channels/nixos-24.11

------------------------------------------------------------------------

## 2. Hapus Channel Lama

``` bash
doas nix-channel --remove nixos
doas nix-channel --remove home-manager
```

------------------------------------------------------------------------

## 3. Tambahkan Channel Baru (25.05)

``` bash
doas nix-channel --add https://nixos.org/channels/nixos-25.05 nixos
doas nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz home-manager
```

------------------------------------------------------------------------

## 4. Update Channel

``` bash
doas nix-channel --update
```

------------------------------------------------------------------------

## 5. Build System dan Home-Manager

-   **System (NixOS):**

``` bash
doas nixos-rebuild switch
```

note:
- fix configurasi yang error karna biasanya configurasi yang lama ada beberapa yang sudah tidak relevan atau di ganti.
- jika sudah di fix jalankan ulang **doas nixos-rebuild switch**

------------------------------------------------------------------------

## 6. Source

``` bash
. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
``` 

------------------------------------------------------------------------

## 7. Cek Hasil

``` bash
nixos-version
home-manager --version # tidak perlu di check karna pake module, kalo di check pasti not found
```

Pastikan nixos-version sudah di versi **25.05**.

------------------------------------------------------------------------

## Catatan

-   Pindah channel berarti upgrade release. Bisa jadi ada perubahan
    besar (kernel, systemd, dsb). Baca dulu [Release Notes NixOS
    25.05](https://nixos.org/manual/nixos/stable/release-notes).