
require("custom.preferences")

-- Disable some built-in plugins
local disabled_built_ins = {
	"netrwPlugin",
	"tohtml",
	"man",
	"tarPlugin",
	"zipPlugin",
	"gzip",
}

for _, k in ipairs(disabled_built_ins) do
	vim.g["loaded_" .. k] = 1
end
