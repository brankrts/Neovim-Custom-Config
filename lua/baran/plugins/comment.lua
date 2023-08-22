
local status , comment = pcall(require , "nvim_comment")
if not status then
  return
end

comment.setup({

    comment_empty = false,
    comment_empty_trim_whitespace =false,
    line_mapping = "//",
    operator_mapping = "<leader>/"


})







