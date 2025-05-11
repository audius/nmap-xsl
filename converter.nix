{ pkgs ? import <nixpkgs> {} }:

let
  nmapBootstrapXsl = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/honze-net/nmap-bootstrap-xsl/stable/nmap-bootstrap.xsl";
    hash = "sha256-CgUDsidWcuYzlYLJp9RIlnAtRpxSnbgXYSmPN4CljYU=";
  };
in pkgs.mkShellNoCC {
  packages = [
    pkgs.bash
    pkgs.libxslt
  ];

  shellHook = ''
    printf "%s\n" "This script converts all nmap XML result files into HTML files"

    export NMAPBOOTSTRAPXSL=${nmapBootstrapXsl}

    # Execute the script
    bash ./nmap-convert.sh
  '';
}
