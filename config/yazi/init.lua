-- keymaps: ~/.config/yazi/keymap.toml
require("simple-mtpfs"):setup {
  -- mount_point = "/media/Android",
}
require("bunny"):setup {
  hops = {
    --stylua: ignore start
    { key = "/",          path = "/",                                    },
    { key = "h",          path = "~",              desc = "Home"         },
    { key = "d",          path = "~/Downloads",    desc = "Desktop"      },
    { key = "c",          path = "~/.config",      desc = "Configs"      },
    { key = "n",          path = "~/.config/nvim", desc = "Neovim"       },
    { key = "y",          path = "~/.config/yazi", desc = "Yazi"         },
    { key = "b",          path = "~/.local/bin",   desc = "bin"          },
    --stylua: ignore end
  },
  desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
  fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
  ephemeral = true, -- Enable ephemeral hops, default is true
  notify = false, -- Notify after hopping, default is false
  tabs = true, -- Enable tab hops, default is true
}

require("fr"):setup {
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
    "--glob",
    "'!.Rproj.user'",
    "--glob",
    "'!.ipynb_checkpoints'",
  },
}
-- Show symlink in status bar
Status:children_add(function(self)
  local h = self._current.hovered
  if h and h.link_to then
    return " -> " .. tostring(h.link_to)
  else
    return ""
  end
end, 3300, Status.LEFT)
