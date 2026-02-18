function vbind -a key cmd
	if [ "$fish_key_bindings" = "fish_vi_key_bindings" ]
		bind -Minsert $key $cmd
	else
		bind $key $cmd
	end
end

