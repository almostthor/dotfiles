#!/bin/bash

cd &&
[ -d '.dotfiles' ] || git clone git://github.com/almostthor/dotfiles.git .dotfiles &&
ls -1d .dotfiles/files/* .dotfiles/files/.* | while read f; do
  [ "$f" == '.dotfiles/files/.' ] ||
  [ "$f" == '.dotfiles/files/..' ] ||
  [ "$f" == '.dotfiles/files/.git' ] ||
  [ "$f" == '.dotfiles/files/Library' ] ||
  ln -vsf "$f" .
done
