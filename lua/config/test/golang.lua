return {
	go_test_args = {
		"-v",
		"-race",
		"-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
	},
}
