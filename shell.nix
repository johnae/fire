with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "fire";
  buildInputs = [ ghc ];
}
