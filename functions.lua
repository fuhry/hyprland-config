function system(cmd)
	local handle = io.popen(cmd)
	if not handle then
		error("failed to execute command: " .. command)
	end
	local stdout = handle:read("*a")
	handle:close()

	return string.gsub(stdout, "\n+", "")
end

