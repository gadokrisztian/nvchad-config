---@type ChadrcConfig 
local M = {}

M.ui = {theme = 'onedark'}
M.plugins = "custom.plugins"


-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
