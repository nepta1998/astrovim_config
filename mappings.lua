-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local utils = require "astronvim.utils"
local get_icon = utils.get_icon
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- delete selected word.
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Delete selected word" },
    -- vimspector
    ["<leader>1"] = { name = "Vimspector", desc = get_icon("Debugger", 1, true) .. "Vimspector" },
    ["<leader>1c"] = { [[:call vimspector#Continue()<CR>]], desc = "Continue" },
    ["<leader>1t"] = { [[:call vimspector#ToggleBreakpoint()<CR>]], desc = "ToggleBreakpoint" },
    ["<leader>1T"] = { [[:call vimspector#ClearBreakpoints()<CR>]], desc = "ClearBreakpoints" },
    ["<leader>1l"] = { [[:call vimspector#Launch()<CR>]], desc = "Start" },
    ["<leader>1r"] = { [[:VimspectorReset<CR>]], desc = "Reset" },
    ["<leader>1e"] = { [[:VimspectorEval]], desc = "Eval" },
    ["<leader>1w"] = { [[:VimspectorWatch]], desc = "Watch" },
    ["<leader>1o"] = { [[:VimspectorShowOutput]], desc = "ShowOutput" },
    ["<leader>1a"] = { "<Plug>VimspectorStepOut", desc = "StepOut" },
    ["<leader>1s"] = { "<Plug>VimspectorStepInto", desc = "StepInto" },
    ["<leader>1d"] = { "<Plug>VimspectorStepOver", desc = "StepOver" },
    ["<leader>1f"] = { "<Plug>VimspectorGoToCurrentLine", desc = "GoToCurrentLine" },
    ["<leader>1v"] = { "<Plug>VimspectorStopOver", desc = "StopOver" },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
