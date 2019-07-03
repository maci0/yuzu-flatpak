#!/bin/bash

rm -Rf yuzu-repo

pushd org.yuzu-emu.yuzu

rm -Rf build
flatpak-builder --ccache --repo=../yuzu-repo build org.yuzu_emu.yuzu.json 

popd
