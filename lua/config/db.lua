local function enc(s)
	return (s:gsub("[^%w%-_.~]", function(c)
		return string.format("%%%02X", c:byte())
	end))
end

vim.api.nvim_create_user_command("DBConnect", function()
	vim.ui.select({ "postgresql", "mysql", "sqlite", "sqlserver", "mongodb" }, { prompt = "Driver" }, function(driver)
		if not driver then
			return
		end
		if driver == "sqlite" then
			vim.b.db = "sqlite:" .. vim.fn.input("File: ", "", "file")
			return
		end
		local host = vim.fn.input("Host: ", "localhost")
		local port = vim.fn.input("Port (empty = default): ")
		local user = vim.fn.input("User: ")
		local pass = vim.fn.inputsecret("Password: ")
		local name = vim.fn.input("Database: ")
		local auth = enc(user) .. (pass ~= "" and (":" .. enc(pass)) or "")
		vim.b.db = string.format("%s://%s@%s%s/%s", driver, auth, host, port ~= "" and (":" .. port) or "", name)
		vim.notify("DB conected to this buffer")
	end)
end, {})
