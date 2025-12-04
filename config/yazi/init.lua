-- keymaps: ~/.config/yazi/keymap.toml
require("simple-mtpfs"):setup({
	-- mount_point = "/media/Android",
})

require("fr"):setup({
	rga = {
		"--follow",
		"--hidden",
		"--no-ignore",
		"--glob",
		"'!.git'",
		"--glob",
		"!'.venv'",
		"--glob",
		"'!node_modules'",
		"--glob",
		"'!.history'",
	},
})
-- Show symlink in status bar
Status:children_add(function(self)
	local link_to = self._current.hovered.link_to
	return link_to and " -> " .. tostring(link_to) or ""
end, 3300, Status.LEFT)
