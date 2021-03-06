# Dan's Dotfiles

Dotfiles are the preferences, tricks and hacks that you use to tame your
terminal. There are many like them, but these are mine.


The structure of these dotfiles are heavily influenced by
[@bswinnerton's](https://github.com/bswinnerton/dotfiles), but the contents has been customized by myself over the years.

## Installation
### `curl` method (easiest)

```
curl -L dots.dankeezer.com | sh
cd ~/.dotfiles
./install
```
Source code for the script is [here](https://github.com/dankeezer/dots.dankeezer.com). Checksums can be found in the [tag notes](https://github.com/dankeezer/dots.dankeezer.com/tags).

The curl method will install everything automatically. This is really useful for quickly setting up a new machine.

### Manual method

```
git clone https://github.com/dankeezer/dotfiles ~/.dotfiles
cd ~/.dotfiles
./install
```

## Components

There are a few special files and conventions to point out:

- `bin/`: Anything in bin/ will be added to your `$PATH` and be made available
  to execute anywhere in your shell.
- `topic/path.fish`: Any file named path.fish is loaded first and is expected to
  setup `$PATH` or similar.
- `topic/*.auto.fish`: Any files ending in .auto.fish get loaded into your
  environment.
- `topic/*.auto.sh`: Any files ending in .auto.sh get loaded into your
  environment, after any `.auto.fish` files.
- `topic/*.symlink`: Any files ending in `*.symlink` get symlinked into your
  $HOME. This is so you can keep all of those versioned in your dotfiles but
  still keep those autoloaded files in your home directory. These get symlinked
  in when you run ./install.
- `topic/install.sh`: Any file named `install.sh` is automatically loaded when
  you call `./install`.

## Thanks

- [@bswinnerton](https://github.com/bswinnerton/dotfiles)
