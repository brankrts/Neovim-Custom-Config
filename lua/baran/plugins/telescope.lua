local status , telescope = pcall(require , "telescope")
if not status then
  return
end


local action_status , actions = pcall(require , "telescope.actions")
if not action_status then
  return
end






telescope.load_extension ("fzf")




