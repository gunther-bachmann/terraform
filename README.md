# Terraform experiments

Terraform experiments using [kitchen-terraform](https://github.com/newcontext-oss/kitchen-terraform)

## setup

``` shell
nix-shell                  # or install direnv for automation
bundle install             # install all necessary gems
bundle exec kitchen test   # execute test
```

### direnv

If using direnv make sure to have this snippent in your `~/.direnvrc` to make
use of aliases defined in `.envrc`:

``` shell
# work around to define aliases within .envrc
# (see https://github.com/direnv/direnv/issues/73#issuecomment-174295790)
#
# Example: export_alias zz "ls -la"
export_alias() {
  local name=$1
  shift
  local alias_dir=$PWD/.direnv/aliases
  local target="$alias_dir/$name"
  mkdir -p "$alias_dir"
  PATH_add "$alias_dir"
  echo "#! /usr/bin/env -S bash -e" > "$target"
  echo "$@ \$@" >> "$target"
  chmod +x "$target"
}
```
