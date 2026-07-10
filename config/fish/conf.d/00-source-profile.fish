if not status is-interactive
	exit
end

if not set -q __fish_env_sourced && test -f ~/.profile
	for line in (bash -c "source ~/.profile; env")
		set -l env (string split '=' $line)
		set -Ux $env[1] $env[2]
	end
	set -Ux __fish_env_sourced 1
end
