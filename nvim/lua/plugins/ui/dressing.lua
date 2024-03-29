--
local M = {
    "stevearc/dressing.nvim",
    lazy = true,
}

M.opts = {}

M.config = function(_, opts)
    require("dressing").setup(opts)
end

M.init = function()
      vim.ui.select = function(...)
        require("lazy").load({ plugins = { "dressing.nvim" } })
        return vim.ui.select(...)
      end
      vim.ui.input = function(...)
        require("lazy").load({ plugins = { "dressing.nvim" } })
        return vim.ui.input(...)
      end
    end

return M