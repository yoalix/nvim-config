function ColorMyPencils(color)
	vim.opt.termguicolors = true

	color = color or "modus_vivendi"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
