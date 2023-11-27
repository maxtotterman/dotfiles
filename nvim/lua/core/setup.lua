local vim = vim
local in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

-- highlight yank
vim.cmd([[
  augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=50}
  augroup END
]])

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]

if in_wsl then
    vim.g.clipboard = {
        name = 'wsl clipboard',
        copy =  { ["+"] = { "clip.exe" },   ["*"] = { "clip.exe" } },
        paste = { ["+"] = { "nvim_paste" }, ["*"] = { "nvim_paste" } },
        cache_enabled = false
    }
end
