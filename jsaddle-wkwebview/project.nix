{ mkDerivation, lib }:
mkDerivation {
  pname = "jsaddle-wkwebview";
  version = "0.9.8.2";
  src = ./.;
  description = "Interface for JavaScript that works with GHCJS and GHC";
  license = lib.licenses.mit;
}
