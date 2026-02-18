function import_zsh_aliases -a path onpkg -d "Import zsh/bash aliases as fish abbreviations"
	[ -f "$path" ] || return
	[ -z "$onpkg" ] || command -vq "$onpkg" || return
	for line in (rg 'alias \w' "$path")
		set -l parts (string split -m1 '=' "$line")
		set -l name (string trim $parts[1] | string replace 'alias ' '')
		set -l cmd (string trim "$parts[2]")
		set cmd (string trim -c "\"'" "$cmd")
		abbr $name "$cmd"
	end
end
