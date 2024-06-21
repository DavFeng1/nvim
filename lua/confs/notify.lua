
local notify_present, notify = pcall(require, "notify")


if not notify_present then
   return
end


vim.notify = notify

