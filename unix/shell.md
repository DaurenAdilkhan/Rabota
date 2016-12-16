# Shell
### Contents
  - 1. Commands
    - 1.1. Archives
    - 1.2. Pacman


## 1. Commands
### 1.1. Archives

| Command | Description |
|---|---|
|`tar xvzf file.tar.gz`| Decompress .tar.gz to this folder |
|`tar xvjf file.tar.bz2 (or .tbz)`| Decompress .tar.bz2 (or .tbz) to this folder |

### 1.2. Pacman
| Command | Description |
|---|---|
|`-S`| Synchronize/Install a package<br>-u also upgrades all packages that are out-of-date<br>-i displays info<br>-c removes no longer needed packages<br>-y upgrades pacman database |
|`-R`| Removes a package<br>-s removes dependencies that are not required by other packages<br>-ss also removes dependencies that were manually installed by a user<br>-u removes targets that are not required by any other packages |
