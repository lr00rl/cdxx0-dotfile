vim.cmd('source ~/.config/nvim/vimrc.vim')

-- 设置所有模式下的光标为块状
vim.o.guicursor = "a:block-Cursor"

-- 确保在进入和离开 Neovim 时保持块状光标
vim.api.nvim_create_autocmd({"VimEnter", "VimLeave"}, {
  callback = function()
    vim.o.guicursor = "a:block-Cursor"
    vim.cmd("set guicursor+=a:blinkon0")
  end
})

-- vim.g.mapleader = '\\'
-- -- 在可视模式下映射 <leader>c 为复制到系统剪贴板
-- vim.keymap.set('v', '<leader>c', '"+y')
-- vim.keymap.set('n', '<leader>v', '"+p')

-- local group = vim.api.nvim_create_augroup("CursorShape", { clear = true })
-- 
-- vim.api.nvim_create_autocmd({"VimLeave", "VimSuspend"}, {
--   group = group,
--   callback = function()
--     vim.o.guicursor = "a:block-blinkon0"
--     io.stdout:write("\27[2 q")
--   end
-- })
-- 
-- vim.api.nvim_create_autocmd({"VimEnter", "VimResume"}, {
--   group = group,
--   callback = function()
--     vim.o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
--   end
-- })
-- 
-- -- 设置初始光标样式
-- vim.o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
