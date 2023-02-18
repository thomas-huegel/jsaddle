{ mkDerivation, aeson, base, base-compat, bytestring, data-default
, jsaddle, lib, text
}:
mkDerivation {
  pname = "jsaddle-clib";
  version = "0.9.8.2";
  src = ./.;
  libraryHaskellDepends = [
    aeson base base-compat bytestring data-default jsaddle text
  ];
  description = "Interface for JavaScript that works with GHCJS and GHC";
  license = lib.licenses.mit;
}
