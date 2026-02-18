function import_aliases -a path onpkg -d "Import posix/zsh aliases as fish abbreviations"
	[ -f "$path" ] || return
	[ -z "$onpkg" ] || command -vq "$onpkg" || return
	for line in (grep 'alias ' "$path")
		set -l parts (string split -m1 '=' "$line")
		set -l name (string trim $parts[1])
		set -l cmd (string trim "$parts[2]")
		set cmd (string trim -c "\"'" "$cmd")

		if string match -qr '^alias -g' -- "$name"
			set name (string replace -r '^alias -g ' '' -- "$name")
			abbr --position anywhere -- "$name" "$cmd"
		else
			set name (string replace -r '^alias ' '' -- "$name")
			abbr -- "$name" "$cmd"
		end
	end
end
