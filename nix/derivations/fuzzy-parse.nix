{ mkDerivation, attoparsec, base, containers, fetchgit, hspec
, hspec-discover, interpolatedstring-perl6, mtl, safe, stdenv, text
, time
}:
mkDerivation {
  pname = "fuzzy-parse";
  version = "0.1.1.0";
  src = fetchgit {
    url = "https://github.com/hexresearch/fuzzy-parse.git";
    sha256 = "12xyi5fwvb1zxbsis3wrxpf02i94piqwsk3wjmcsvmrqky15aqii";
    rev = "b289e699b39073f0987200594896d26cb56813b5";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    attoparsec base containers mtl safe text time
  ];
  testHaskellDepends = [
    base hspec hspec-discover interpolatedstring-perl6 text
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/hexresearch/fuzzy-parse";
  description = "Tools for processing unstructured text data";
  license = stdenv.lib.licenses.mit;
}
