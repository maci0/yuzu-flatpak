#!/bin/bash

# remove old
flatpak remove -y org.yuzu_emu.yuzu || true
flatpak --user remote-delete yuzu-repo || true

# add new
flatpak --user remote-add --no-gpg-verify --if-not-exists yuzu-repo yuzu-repo
flatpak --user -y install yuzu-repo org.yuzu_emu.yuzu

# run
flatpak run org.yuzu_emu.yuzu
