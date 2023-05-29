local builtin = require('telescope.builtin')

-- find file by name
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- find file by name within git scope
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- find string in all files
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")})
end)
