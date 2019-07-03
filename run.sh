#!/bin/bash

flatpak --user remote-add --no-gpg-verify --if-not-exists yuzu-repo yuzu-repo
flatpak --user install yuzu-repo org.yuzu_emu.yuzu
flatpak run org.yuzu_emu.yuzu
