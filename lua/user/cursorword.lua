local status_ok, cursorword = pcall(require, "mini.cursorword")
if not status_ok then
	return
end

cursorword.setup()
