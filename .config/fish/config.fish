set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths
set -x PATH /bin /usr/bin /usr/local/bin /sbin /usr/sbin /usr/local/sbin
set -x PATH  /home/vahid/scripts $PATH
set -x PATH /home/vahid/.yarn/bin $PATH
# set -x SXHKD_SHELL "/bin/sh"
set EDITOR "vim"
set fish_greeting
set fish_vi_key_bindings

# Function for printing a column (splits input on whitespace)
# ex: echo 1 2 3 | coln 3
# output: 3
function coln
    while read -l input
        echo $input | awk '{print $'$argv[1]'}'
    end
end

# Function for printing a row
# ex: seq 3 | rown 3
# output: 3
function rown --argument index
    sed -n "$index p"
end

function sudo
  if test "$argv" = !!
    eval command sudo $history[1]
  else
    command sudo $argv
  end
end

function vlc
  nohup vlc $argv[1] &
end

function android
  if test "$argv" = off
    eval command sudo fusermount -u /root/android/
  else
    eval command sudo aft-mtp-mount -o allow_other /root/android
  end
end

source ~/.config/aliasrc
# colorscript random
starship init fish | source
