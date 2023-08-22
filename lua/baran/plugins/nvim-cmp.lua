
local status, cmp = pcall(require, "cmp" )
if not status then
  return
  
  
end

local luasnip_status, luasnip = pcall(require, "luasnip" )
if not luasnip_status then
  return
end
local lspkind_status, lspkind = pcall(require, "lspkind" )
if not lspkind_status then
  return
end


-- load friendlu-snippets

require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
  completion = { completeopt = 'menu,menuone,noinsert'},

  snippet ={

  expand = function (args)
    luasnip.lsp_expand(args.body)
  end,
  }, 

  mapping = cmp.mapping.preset.insert({

    ["<CR>"] = cmp.mapping.confirm({select = false}),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),

  }),

  sources = cmp.config.sources ({
    {name = "luasnip"},
    {name = "buffer"},
    {name = "path"},
    {name = "nvim_lsp"},

    formatting = {
      format = lspkind.cmp_format ({

        maxwidth = 50,
        ellipsis_char = "..."
      })
    }

  })



})

