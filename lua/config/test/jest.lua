return {
	jestCommand = "npm test --",
	env = {
		CI = true,
	},
	cwd = function()
		return vim.fn.getcwd()
	end,
	isTestFile = require("neotest-jest.jest-util").defaultIsTestFile,
}
