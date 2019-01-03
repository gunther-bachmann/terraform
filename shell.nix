with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "terraform-experiment";
    buildInputs = [
        terraform
        terraform-providers.docker
        ruby
        go_bootstrap
    ];
    shellHook = ''
        # make sure no output is done, since direnv fails with direnv: error unmarshal() base64 decoding: illegal base64 data at input byte ?
        export BUNDLE_PATH=$(pwd)
    '';
}
