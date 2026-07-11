status is-interactive || exit

if not set -q __fish_env_sourced && test -f ~/.profile
	for line in (bash -c "source ~/.profile &>/dev/null; env")
		set -l env (string split -m1 '=' -- $line)
		set -Ux $env[1] $env[2] &>/dev/null
	end
	set -Ux __fish_env_sourced 1
end
