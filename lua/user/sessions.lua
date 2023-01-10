local status_ok, sessions = pcall(require, "mini.sessions")
if not status_ok then
	return
end

sessions.setup()
