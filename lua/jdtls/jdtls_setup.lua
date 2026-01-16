local M = {}

function M.setup()
	local status_ok, blink = pcall(require, "blink.cmp")
	local capabilities = status_ok and blink.get_lsp_capabilities() or vim.lsp.protocol.make_client_capabilities()
	local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
	local workspace_dir = "/home/gaston/development/jdtls_data/" .. project_name
	local launcher_jar =
		vim.fn.glob("/home/gaston/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar")
	local config = {
		cmd = {
			"/usr/lib/jvm/java-25-openjdk/bin/java",
			"-Declipse.application=org.eclipse.jdt.ls.core.id1",
			"-Dosgi.bundles.defaultStartLevel=4",
			"-Dlog.protocol=true",
			"-Dlog.level=ALL",
			"-Xmx1g",
			"--add-modules=ALL-SYSTEM",
			"--add-opens",
			"java.base/java.util=ALL-UNNAMED",
			"--add-opens",
			"java.base/java.lang=ALL-UNNAMED",
			"-jar",
			launcher_jar,
			"-configuration",
			"/home/gaston/.local/share/nvim/mason/packages/jdtls/config_linux/",
			"-data",
			workspace_dir,
		},
		root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
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
