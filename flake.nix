{
  description = "Basic flake template";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {

        templates = {
          basic = {
            path = ./template;
            description = "basic dev environment for pros";
          };
        };
        devShell = with pkgs; mkShell {
          buildInputs = with pkgs; [

          ];

        };
      });
}
