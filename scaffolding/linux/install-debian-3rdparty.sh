# install gdebi to make life easier
sudo apt-get install -y gdebi

# slack
if ! slack -v ; then
  wget -c https://downloads.slack-edge.com/linux_releases/slack-desktop-4.2.0-amd64.deb
  sudo gdebi slack-desktop-4.2.0-amd64.deb
  rm slack-desktop-4.2.0-amd64.deb
fi;

# spotify
if ! spotify --version ; then
  curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

  sudo apt-get update && sudo apt-get install spotify-client
fi;
