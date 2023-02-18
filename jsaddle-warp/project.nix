{ mkDerivation, aeson, base, bytestring, containers, deepseq
, doctest, exceptions, filepath, foreign-store, ghc-prim
, http-types, jsaddle, lens, lib, network, primitive, process
, QuickCheck, random, ref-tf, stm, text, time, transformers
, unliftio-core, wai, wai-websockets, warp, webdriver, websockets
}:
mkDerivation {
  pname = "jsaddle-warp";
  version = "0.9.8.2";
  src = ./.;
  libraryHaskellDepends = [
    aeson base bytestring containers foreign-store http-types jsaddle
    stm text time transformers wai wai-websockets warp websockets
  ];
  testHaskellDepends = [
    aeson base bytestring containers deepseq doctest exceptions
    filepath foreign-store ghc-prim http-types jsaddle lens network
    primitive process QuickCheck random ref-tf stm text time
    transformers unliftio-core wai wai-websockets warp webdriver
    websockets
  ];
  description = "Interface for JavaScript that works with GHCJS and GHC";
  license = lib.licenses.mit;
}
