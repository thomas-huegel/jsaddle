let
  pkgs = import <nixpkgs> { };

in
  { 
    jsaddle = pkgs.haskellPackages.callPackage ./jsaddle/project.nix { };
    jsaddle-clib = pkgs.haskellPackages.callPackage ./jsaddle-clib/project.nix { };
    jsaddle-warp = pkgs.haskellPackages.callPackage ./jsaddle-warp/project.nix { };
    jsaddle-webkit2gtk = pkgs.haskellPackages.callPackage ./jsaddle-webkit2gtk/project.nix { };
    #jsaddle-webkitgtk = pkgs.haskellPackages.callPackage ./jsaddle-webkitgtk/project.nix { };
    #jsaddle-wkwebview = pkgs.haskellPackages.callPackage ./jsaddle-wkwebview/project.nix { };
  }
