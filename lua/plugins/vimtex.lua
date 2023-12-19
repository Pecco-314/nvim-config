return {
    {
        "lervag/vimtex",
        config = function()
            vim.g.vimtex_compiler_method = 'latexmk'
            vim.g.vimtex_compiler_latexmk = {
                executable = 'latexmk',
                options = {
                    "-xelatex",
                    "-interaction=nonstopmode",
                    "-synctex=1",
                    "-shell-escape",
                },
            }
        end
    }
}
