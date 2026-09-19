function qf -a row -a col -d "Quickfix"
	test -z "$row" && set row 1
	test -z "$col" && set col 1
	sed "s#\$#:$row:$col: #"| nvim -q- -c":copen"
end
