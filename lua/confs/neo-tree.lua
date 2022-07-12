local status_ok, neo_tree = pcall(require, "neo-tree")
if not status_ok then
  return
end



neo_tree.setup ({
	close_if_last_window = false,
	filesystem = {
		follow_current_file = true,
		filtered_items = {
			visible = true
		},
	}
})
