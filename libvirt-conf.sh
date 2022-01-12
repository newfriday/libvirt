#!/bin/bash
meson setup --wipe builddir .
meson setup --prefix /usr --reconfigure builddir .
meson compile -C builddir
meson test -C  builddir
#meson install -C builddir
ninja -C builddir uninstall
ninja -C builddir install
ninja -C builddir test
