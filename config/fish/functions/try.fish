function try
	command -vq $argv[1] && eval "$argv[1] $argv[2..-1]"
end
