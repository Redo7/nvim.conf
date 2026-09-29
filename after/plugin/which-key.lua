local ok, wk = pcall(require, "which-key")
if not ok then
  return
end

wk.setup({
  preset = "helix",
  win = {
    border = "rounded",
    padding = { 2, 2 },
  },
})
