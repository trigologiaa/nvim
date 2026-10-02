local M = {}

function M.setup()
	local home = os.getenv("HOME")
	local data = vim.fn.stdpath("data")
	local jdtls_dir = data .. "/mason/packages/jdtls"
	local root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }) or vim.fn.getcwd()
	local project_name = vim.fn.fnamemodify(root_dir, ":t")
	local workspace_dir = data .. "/jdtls/workspace/" .. project_name
	local launcher_jar = vim.fn.glob(jdtls_dir .. "/plugins/org.eclipse.equinox.launcher_*.jar")
	local lombok_path = home .. "/.java/lombok.jar"
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	local has_blink, blink = pcall(require, "blink.cmp")
	if has_blink then
		capabilities = blink.get_lsp_capabilities(capabilities)
	end
	local config = {
		cmd = {
			"java",
			"-Declipse.application=org.eclipse.jdt.ls.core.id1",
			"-Dosgi.bundles.defaultStartLevel=4",
			"-Dlog.protocol=true",
			"-Dlog.level=WARNING",
			"-Xmx1g",
			"--add-modules=ALL-SYSTEM",
			"--add-opens",
			"java.base/java.util=ALL-UNNAMED",
			"--add-opens",
			"java.base/java.lang=ALL-UNNAMED",
			"-javaagent:" .. lombok_path,
			"-jar",
			launcher_jar,
			"-configuration",
			jdtls_dir .. "/config_linux/",
			"-data",
			workspace_dir,
		},
		root_dir = root_dir,
		settings = {
			java = {},
		},
		init_options = {
			bundles = {},
		},
		capabilities = capabilities,
	}
	require("jdtls").start_or_attach(config)
end

return M
