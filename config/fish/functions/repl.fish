function repl -a prompt -a last
	[ -z "$last" ] && set -l last ""
	[ -z "$prompt" ] && echo "prompt not entered" && return 1
	set -l cmd (string split -m1 ' ' $prompt)[1]
	not command -vq $cmd && echo "repl: $cmd: command not found" && return 1
	read -l -P "repl ($prompt) >>> " -c $last line
	switch $line
		case ':q'
			return 0
		case '*'
			clear
			eval "$prompt $line"
			repl $prompt $line
	end
end
