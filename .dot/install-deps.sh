# up to you (me) if you want to run this as a file or copy paste at your leisure

# homebrew!
# you need the code CLI tools YOU FOOL.
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

# https://github.com/rupa/z
# z, oh how i love you
cd ~/.dot
git clone https://github.com/rupa/z.git
chmod +x ~/.dot/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile


# https://github.com/dronir/SpotifyControl
# Spotify Controll Script
cd ~/.dot
git clone git://github.com/dronir/SpotifyControl.git

# my magic photobooth symlink -> dropbox. I love it.
# first move Photo Booth folder out of Pictures
# then start Photo Booth. It'll ask where to put the library.
# put it in Dropbox/public

# now you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
# then you grab public URL and send off your video message in a heartbeat.

# for the c alias (syntax highlighted cat)
sudo easy_install Pygments


# chrome canary as default
# on a mac you can set chrome canary as your default inside of Safari preferences :)
