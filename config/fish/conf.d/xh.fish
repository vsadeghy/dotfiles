function _xh_with_insecure
	set -l xh (command -v $argv[1])
	set -l args
	for arg in $argv[2..]
		switch $arg
			case '-k' '--insecure'
				set -a args --verify=no
			case '*'
				set -a args $arg
		end
	end
	eval $xh $args
end

complete --command _xh_with_insecure --short k --long insecure --description "Allow insecure server connections"

function xh --wraps _xh_with_insecure
	_xh_with_insecure xh $argv
end

function xhs --wraps _xh_with_insecure
	_xh_with_insecure xhs $argv
end
