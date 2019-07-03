#!/bin/bash

pushd org.yuzu-emu.yuzu
rm -Rf build ../yuzu-repo
flatpak-builder --ccache --repo=../yuzu-repo build org.yuzu_emu.yuzu.json 

popd
