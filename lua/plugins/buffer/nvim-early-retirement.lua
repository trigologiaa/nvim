return {
	"chrisgrieser/nvim-early-retirement",
	enabled = true,
	config = true,
	event = "BufReadPost",
	opts = {
		retirementAgeMins = 10,
		ignoredFiletypes = {
			"lazy",
		},
		notificationOnAutoClose = true,
		ignoreAltFile = true,
		minimumBufferNum = 1,
		ignoreUnsavedChangesBufs = true,
		ignoreSpecialBuftypes = true,
		ignoreVisibleBufs = true,
		ignoreUnloadedBufs = false,
		ignoreFilenamePattern = "",
		deleteBufferWhenFileDeleted = true,
		deleteFunction = nil,
	},
}
