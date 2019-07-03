#!/bin/bash

flatpak remove -y org.yuzu_emu.yuzu
flatpak --user remote-add --no-gpg-verify --if-not-exists yuzu-repo yuzu-repo
flatpak --user -y install yuzu-repo org.yuzu_emu.yuzu
flatpak run org.yuzu_emu.yuzu
