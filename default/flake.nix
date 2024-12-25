{
  description= "an empty flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    # Dependencies go here
  };

  outputs = {self, nixpkgs}: 
    let 
      system = "x86_64-linux"; # or "aarch64-linux" or "x86_64-darwin" or "aarch64-darwin
      pkgs = import nixpkgs { inherit system; };
    in {
    # Outputs go here
    packages.${system}.default = pkgs.hello;

    devShells.default = pkgs.mkShell {
      # Shell dependencies go here
      packages = with pkgs; [];
    };
    };
}