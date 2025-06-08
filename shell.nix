{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = with pkgs; [
      texliveFull
      pixi
      uv
      just
    ];
    shellHook = ''
      watch_file pixi.lock
      eval "$(pixi shell-hook)"
    '';
  }