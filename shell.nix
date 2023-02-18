{ nixpkgs ? import <nixpkgs> {}, compiler ? "default", doBenchmark ? false }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, aeson, base, bytestring, directory, gi-gio
      , gi-glib, gi-gtk, gi-javascriptcore, gi-webkit2, haskell-gi-base
      , haskell-gi-overloading, jsaddle, lib, text, unix
      , webkit2gtk3-javascriptcore
      }:
      mkDerivation {
        pname = "jsaddle-webkit2gtk";
        version = "0.9.8.2";
        src = ./.;
        libraryHaskellDepends = [
          aeson base bytestring directory gi-gio gi-glib gi-gtk
          gi-javascriptcore gi-webkit2 haskell-gi-base haskell-gi-overloading
          jsaddle text unix webkit2gtk3-javascriptcore
        ];
        description = "Interface for JavaScript that works with GHCJS and GHC";
        license = lib.licenses.mit;
      };

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  variant = if doBenchmark then pkgs.haskell.lib.doBenchmark else pkgs.lib.id;

  drv = variant (haskellPackages.callPackage f {});

in

  if pkgs.lib.inNixShell then drv.env else drv
