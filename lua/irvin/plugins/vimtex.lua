return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	config = function()
		vim.g.vimtex_compiler_method = "latexmk" -- documentation @ vimtex-compiler-latexmk
		vim.g.vimtex_syntax_enabled = 1 -- set to 0 to disable VimTex syntax highlighting
		vim.g.vimtex_view_enabled = 1
		vim.g.vimtex_view_method = "zathura_simple"
		vim.g.vimtex_quickfix_mode = 0
		vim.g.tex_flavor = "latex"
		vim.g.conceallevel = "abdmg"
		vim.opt.conceallevel = 2
	end,
}
