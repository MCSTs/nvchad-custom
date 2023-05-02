---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- disable key
    ["s"] = { "<nop>" },
    ["Q"] = { "<nop>" },

    -- quit and save
    ["<leader>w"] = { ":w<cr>", "Save file" },
    ["<leader>q"] = { ":q<cr>", "quit" },

    -- split windows
    ["<leader>sl"] = { "<c-w>v", "split windos vertical" },
    ["<leader>sj"] = { "<c-w>s", "split windos horizintal" },

    -- buffer
    ["<A-n>"] = { ":bnext<cr>", "next buffer" },
    ["<A-p>"] = { ":bprevious<cr>", "previous buffer" },
    ["<leader>\\"] = { "<c-^>", "switch buffer" },
    ["<leader>D"] = { ":%bd<cr>", "delete all buffer" },

    -- noh
    ["<leader><cr>"] = { ":noh<cr>", "cancel highlights", opts = { silent = true } },

    -- jump to init.lua
    ["<leader>rc"] = { "<cmd> e $MYVIMRC <cr>", "Jump to init.lua file", opts = { silent = true } },

    -- workDir
    ["<leader>cd"] = { "<cmd> lcd %:p:h <cr>", "set parentDir" },

    -- cursor move
    ["E"] = { "$", "move to the end of line" },
    ["W"] = { "0", "move to the start of line" },

    -- tab
    ["<A-t>"] = { ":tabnew %<cr>", "new tab", opts = { silent = true } },
    ["<A-j>"] = { ":tabNext<cr>", "next tab", opts = { silent = true } },
    ["<A-k>"] = { ":tabprevious<cr>", "previous tab", opts = { silent = true } },
    ["<A-q>"] = { ":tabclose<cr>", "close tab", opts = { silent = true } },

    -- resize windows
    ["<up>"] = { ":res +5<cr>", "resize up" },
    ["<down>"] = { ":res -5<cr>", "resize down" },
    ["<left>"] = { ":vertical resize-5<cr>", "resize left" },
    ["<right>"] = { ":vertical resize+5<cr>", "resize right" },

    -- plugin
    -- hop
    ["<leader>hc"] = { ":HopChar1<CR>", "hop: search char" },
    ["<leader>hw"] = { ":HopWord<CR>", "hop: search word" },
    ["<leader>hh"] = { ":HopAnywhere<CR>", "hop: search anywhere" },
    ["<leader>hl"] = { ":HopLineStart<CR>", "hop: search line start" },
    -- MaximizerToggle
    ["<leader>sm"] = { ":MaximizerToggle<CR>", "MaximizerToggle", opts = { silent = true } },
    -- SymbolsOutline
    ["<leader>so"] = { ":SymbolsOutline<CR>", "Toggle SymbolsOutline", opts = { silent = true } },
    -- automaton
    ["<leader><leader>j"] = { "<cmd>CellularAutomaton game_of_life<CR>", "Automaton game_of_life" },
    ["<leader><leader>k"] = { "<cmd>CellularAutomaton make_it_rain<CR>", "Automaton make_it_rain" },
    -- markdown preview
    -- ["<leader>mp"] = { ":MarkdownPreview<cr>", "MarkdownPreview", opts = {silent = true} },
  },
  v = {
    -- cursor move
    ["E"] = { "$", "move to the end of line" },
    ["W"] = { "0", "move to the start of line" },
  },
  t = {
    ["<C-p>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "escape terminal mode" },
  },
  i = {},
}

M.disabled = {
  n = {
    -- whichkey
    ["<leader>wk"] = "",
    ["<leader>wK"] = "",

    -- lspconfig
    ["<leader>wl"] = "",
    ["<leader>wr"] = "",
    ["<leader>wa"] = "",
    ["<leader>D"] = "",
    ["<leadar>ra"] = "",
    ["<leader>f"] = "",
    ["<leader>q"] = "",

    -- tabufline
    ["<leader>x"] = "",
    ["<tab>"] = "",
    ["<S-tab>"] = "",

    -- telescope
    ["<leader>fw"] = "",

    -- nvim-tree
    ["<C-n>"] = "",

    -- nvterm
    ["<leader>h"] = "",
    ["<leader>v"] = "",

    ["<Esc>"] = { ":noh <CR>", "clear highlights" },
    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },

    -- Copy all
    ["<C-c>"] = { "<cmd> %y+ <CR>", "copy whole file" },

    -- line numbers
    ["<leader>n"] = { "<cmd> set nu! <CR>", "toggle line number" },
    ["<leader>rn"] = { "<cmd> set rnu! <CR>", "toggle relative number" },

    -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
    -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
    -- empty mode is same as using <cmd> :map
    -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
    ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "move down", opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "move up", opts = { expr = true } },
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "move up", opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "move down", opts = { expr = true } },

    -- new buffer
    ["<leader>b"] = { "<cmd> enew <CR>", "new buffer" },
  },
  i = {
    ["<C-b>"] = "",
    ["<C-e>"] = "",
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  },
  t = {
    ["<C-x>"] = "",
  },
  v = {
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "move up", opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "move down", opts = { expr = true } },
  },
}

M.nvimtree = {
  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.tabufline = {
  n = {
    -- close buffer + hide terminal buffer
    ["<leader>d"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

M.telescope = {
  n = {
    -- find
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<leader>fk"] = { "<cmd> Telescope keymaps<CR>", "keymaps" },
  },
}

M.gitsigns = {
  n = {
    -- Actions
    ["<leader>rh"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },
    ["<leader>sh"] = {
      function()
        require("gitsigns").stage_hunk()
      end,
      "stage hunk",
    },
    ["<leader><leader>u"] = {
      function()
        require("gitsigns").undo_stage_hunk()
      end,
      "undo stage hunk",
    },
  },
}

M.lspconfig = {
  n = {
    ["<leader>ld"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "lsp definition type",
    },

    ["<leader>rn"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "lsp rename",
    },
    ["<leader>lf"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "floating diagnostic",
    },
    ["<leader>lq"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "diagnostic setloclist",
    },
    ["<leader>;a"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "add workspace folder",
    },
    ["<leader>;r"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "remove workspace folder",
    },

    ["<leader>;l"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "list workspace folders",
    },
  },
}

return M
