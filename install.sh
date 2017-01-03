#!/bin/bash
# Installs Square's IntelliJ configs into your user configs.

echo "Installing Door2Door AndroidStudio configs..."

CONFIGS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs"

for i in $HOME/Library/Preferences/AndroidStudio* \
         $HOME/.AndroidStudio*/config
do
  if [[ -d $i ]]; then

    # Install codestyles
    mkdir -p $i/codestyles
    cp -frv "$CONFIGS/codestyles"/* $i/codestyles
  fi
done

echo "Done."
echo ""
echo "Restart AndroidStudio, go to preferences, and apply 'Door2Android'."
