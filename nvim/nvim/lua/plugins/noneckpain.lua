require("no-neck-pain").setup({
	buffers = {
		right = {
			enabled = false,
		},
		scratchPad = {
			-- set to `false` to disable auto-saving
			enabled = false,
			-- set to `nil` to default to current working directory
			location = "~/Documents/",
		},
		bo = {
			filetype = "md"
		},
	},
	autocmds = {
		enableOnVimEnter = false,
	}
})
