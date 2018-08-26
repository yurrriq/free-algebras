{ nixpkgs
, mkDerivation
, base
, binary
, bytestring
, constraints
, free
, free-algebras
, groups
, hpack
, mtl
, network
, transformers
, stdenv
}:
mkDerivation {
  pname = "free-algebras-examples";
  version = "0.0.3.0";
  src = nixpkgs.lib.sourceFilesBySuffices ./.
    [ ".hs" "LICENSE" "ChangeLog.md" "package.yaml" ];
  libraryHaskellDepends = [
    base
    binary bytestring
    constraints
    free
    free-algebras
    groups
    mtl
    network
    transformers
  ];
  libraryToolDepends = [ hpack ];
  preConfigure = "hpack";
  license = stdenv.lib.licenses.mpl20;
  enableSeparateDocOutput = false;
}