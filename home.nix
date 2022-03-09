{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "kwguo";
  home.homeDirectory = "/home/kwguo";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    # system
    # chrony

    # font
    arphic-ukai
    arphic-uming
    dejavu_fonts
    font-awesome
    inconsolata
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    noto-fonts-extra
    powerline-fonts
    source-han-sans-japanese
    source-han-sans-korean
    source-han-sans-simplified-chinese
    source-han-sans-traditional-chinese
    source-sans-pro
    ubuntu_font_family
    wqy_microhei
    wqy_zenhei

    # windows
    # xorg.xinit
    # xorg.xorgserver
    # xorg.xinput
    # xorg.xkbcomp
    # xorg.xkbevd
    # xorg.xkbutils
    # xorg.setxkbmap
    i3
    i3status
    nitrogen

    # terminal
    zip
    unzip
    tree
    neofetch

    # developer
    git

    # app
    kitty
    alacritty
    firefox
    rofi
  ];

  fonts = {
    fontconfig = {
      enable = true;
    };
  };

  programs.git = (import ./configs/git.nix);
}
