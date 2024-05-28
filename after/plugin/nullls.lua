local status, null_ls = pcall(require, "null-ls")
if not status then
    return
end

null_ls.setup {
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.eslint_d,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
    },
}

local status, prettier = pcall(require, "prettier")
if not status then
    return
end

prettier.setup {
    bin = "prettier",
    filetypes = { "javascript", "typescript", "css", "json", "yaml", "html", "markdown", "vue", "svelte", "graphql", "scss", "less", "lua" },
    -- args = {"--single-quote"},
    -- args = {"--single-quote", "--trailing-comma", "all", "--config-precedence", "prefer-file"},
}
