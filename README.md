# mpv-playlist-dir-conf
MPV script that loads a mpv.conf from the directory of the playlist, extending `--use-filedir-conf` behavior to work with playlists.

Created by [Guido Cella](https://github.com/mpv-player/mpv/issues/15803#issuecomment-2708388016). All credit to them.

# Usage
1. Add to your MPV config:
```
use-filedir-conf=no
```
2. Place [playlist-dir-conf.lua](playlist-dir-conf.lua)-file in your [`scripts`](https://mpv.io/manual/master/#files-~/-config/mpv/scripts/)-folder.

# Why?
## Idea
You have a folder-structure like:
```
my-playlist/
├── mpv.conf
└── playlist.m3u8
```
Where `playlist.m3u8` contains entries that aren't located next to the `mpv.conf`.

## Problem
The `mpv.conf`-file next to the playlist won't actually be used for the entries. \
This is because `--use-filedir-conf` traverses the playlist's entry for a `mpv.conf`.

## Fix
This script loads the `mpv.conf` from the playlist's own directory, rather than from the directory of each individual entry.
