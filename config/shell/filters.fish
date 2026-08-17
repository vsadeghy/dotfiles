function rows -a row -d "get nth row of a table"
	awk "NR==$row {print}"
end

function cols -a col sep -d "get nth column of a table"
	test -z "$sep" && set sep " "
	awk -F "$sep" "{print \$$col}"
end
