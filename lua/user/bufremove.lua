local status_ok, bufremove = pcall(require, "mini.bufremove")
if not status_ok then
	return
end

bufremove.setup()
