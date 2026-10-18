set -gx fish_proxy (cat $__fish_user_data_dir/fish_proxy 2>/dev/null)

function setproxy
	if test (count $argv) -gt 0
		echo $argv[1] > $__fish_user_data_dir/fish_proxy
		set -gx fish_proxy $argv[1]
		echo "Proxy set to: $argv[1]"
	else
		cat $__fish_user_data_dir/fish_proxy 2>/dev/null || echo "Error: proxy not configured. Use 'setproxy <ip:port>' first" >&2
	end
end

function proxy
	if not test -f $__fish_user_data_dir/fish_proxy
		echo "Error: proxy not configured. Use 'setproxy <ip:port>' first" >&2
		return 1
	end
	set -Ux http_proxy $fish_proxy
	set -Ux https_proxy $fish_proxy
	set -Ux ftp_proxy $fish_proxy
	set -Ux rsync_proxy $fish_proxy
	set -Ux all_proxy $fish_proxy
	set -Ux no_proxy "localhost,127.0.0.1,localaddress,.localdomain.com"
	echo "Proxy enabled: $fish_proxy"
end

function noproxy
	set -Ue http_proxy
	set -Ue https_proxy
	set -Ue ftp_proxy
	set -Ue rsync_proxy
	set -Ue all_proxy
	set -Ue no_proxy
	echo "Proxy disabled"
end
