{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ruby
    go
    lua
    (python312Full.withPackages(ps: with ps; [ pygobject3 gobject-introspection pyqt6-sip]))
    # nodePackages_latest.nodejs
    # bun
    # zig
    # numbat
  ];
}
