# pros-nix-template



Are you tired of running 

> sudo pacman -Syu

and your entire working environment breaking?

Well worry no longer! Nix is here to save the day!

Nix is a way to declaritivly lock dependencies! All the inputs are stored in a lockfile.

Nix makes it so that all your packages are local to your programming env, not global.
Similar to venv for python. Except it works for the over 80,000 packages in the Nix repository.

Nix is available for ~~all~~ most linux distros, macOS and is even a standalone distro! If you want to use windows, use WSL.
To get started install nix with your package manager:
```sh
#pacman
sudo pacman -S nix

#Or run the shell script
sh <(curl -L https://nixos.org/nix/install) --daemon

#If on macOS
$ sh <(curl -L https://nixos.org/nix/install) --no-daemon
```
More info here:
https://nixos.org/download.html

Then cd into the directory you want in you terminal and run:
```sh
nix flake init --template github:BattleCh1cken/pros-nix-template#template
nix develop
```
If your interesting in learning more look here:

https://nixos.org/manual/nix/unstable/

Happy coding!
