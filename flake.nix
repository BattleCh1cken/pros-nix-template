{
  description = "Basic flake template";
  inputs = {
    #nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    #utils.url = "github:numtide/flake-utils";
  };

  outputs = { self }:
    {
      templates = {
        template = {
          path = ./template;
          description = "basic dev environment for pros";
        };
      };
    };
}
