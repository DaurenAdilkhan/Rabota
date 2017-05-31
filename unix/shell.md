# Shell
### Contents
1. Commands
- Archives
- Pacman
- Find & Replace
- Format Drives


## 1. Commands
### 1.1. Archives

| Command | Description |
|---|---|
|`tar xvzf file.tar.gz`| Decompress .tar.gz to this folder |
|`tar xvjf file.tar.bz2 (or .tbz)`| Decompress .tar.bz2 (or .tbz) to this folder |

### 1.2. Pacman
| Command | Description |
|---|---|
|`-S`| Synchronize/Install a package<br>`-u` also upgrades all packages that are out-of-date<br>`-i` displays info<br>`-c` removes no longer needed packages<br>`-y` upgrades pacman database |
|`-R`| Removes a package<br>`-s` removes dependencies that are not required by other packages<br>`-ss` also removes dependencies that were manually installed by a user<br>`-u` removes targets that are not required by any other packages |

### 1.3. Find & Replace

| Command | Description |
|---|---|
|`find ./ -type f -name "*.vue" -exec sed -i "s:~plugins/wave:~plugins/mixins/wave:g" {} \;`| Find in current directory files with a format .vue and then replace on all lines |
|`grep -rl --include *.vue 'showSiteMsg' .`|Search for text `showSiteMsg` recursively in all `.vue` files|

### 1.4. Format drives
![Screenshot from https://www.howtogeek.com/73178/what-file-system-should-i-use-for-my-usb-drive/](https://github.com/OlzhasAlexandrov/cheatsheets/blob/master/unix/formats_OS_support.png)

Install necessary pkgs:

`sudo pacman -S dosfstools`

`sudo pacman -S ntfsprogs`

| Command | Description |
|---|---|
|`df -h`| List all attached filesystems |
|`sudo umount fsName`|fsName example `/dev/sdb2`|
|`sudo mkfs.vfat fsName`|vFat fs formatting|
|`sudo mkfs.ntfs fsName`|NTFS fs formatting|
|`sudo mkfs.ext4 fsName`|EXT4 fs formatting|
