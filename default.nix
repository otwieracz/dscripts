with import <nixpkgs> {};

{ stdenv, isync }:
stdenv.mkDerivation rec {
  name = "dscripts";

  srcs = [ ./dscripts ];

  unpackPhase = "true";

  installPhase = ''
      mkdir -p $out/bin
      cp ${ ./dscripts/bin/dmount } $out/bin/dmount
      cp ${ ./dscripts/bin/dumount } $out/bin/dumount
      cp ${ ./dscripts/bin/dmenudo } $out/bin/dmenudo
      chmod +x $out/bin/dmount
      chmod +x $out/bin/dumount
      chmod +x $out/bin/dmenudo
  '';
}
