-- Register build step before installation so it fires on first install
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    if ev.data.spec.name ~= 'markdown-preview.nvim' then return end
    if ev.data.kind ~= 'install' and ev.data.kind ~= 'update' then return end
    if vim.fn.executable 'yarn' ~= 1 then
      vim.notify('yarn not found; skipping markdown-preview build', vim.log.levels.WARN)
      return
    end
    local result = vim.system({ 'yarn', 'install' }, { cwd = vim.fs.joinpath(ev.data.path, 'app') }):wait()
    if result.code ~= 0 then
      vim.notify('Build failed for markdown-preview.nvim:\n' .. (result.stderr or result.stdout or ''), vim.log.levels.ERROR)
    end
  end,
})

vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }
vim.g.mkdp_filetypes = { 'markdown' }
