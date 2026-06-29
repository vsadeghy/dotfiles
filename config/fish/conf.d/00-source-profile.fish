if not status is-interactive
	exit
end
if not set -q __fish_env && test -f ~/.profile
	exec bash -c "source ~/.profile; __fish_env=1 exec fish --login"
end
