{ mkDerivation, aeson, base, bytestring, directory, gi-glib, gi-gtk
, gi-javascriptcore, gi-webkit, haskell-gi-base, jsaddle, lib, text
, unix, webkitgtk3-javascriptcore
}:
mkDerivation {
  pname = "jsaddle-webkitgtk";
  version = "0.9.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base bytestring directory gi-glib gi-gtk gi-javascriptcore
    gi-webkit haskell-gi-base jsaddle text unix
    webkitgtk3-javascriptcore
  ];
  description = "Interface for JavaScript that works with GHCJS and GHC";
  license = lib.licenses.mit;
}
