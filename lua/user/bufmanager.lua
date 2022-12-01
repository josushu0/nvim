local status_ok, bufmanager = pcall(require, "buffer_manager")
if not status_ok then
	return
end

bufmanager.setup()
