return {
	  filetypes = { "python" },
	  cmd = { "pyright-langserver", "--stdio" },

	  settings = {
		    python = {
			      analysis = {
				        autoSearchPaths = true,
				        diagnosticMode = "openFilesOnly",
				        useLibraryCodeForTypes = true
				      }
			    }
		  }
}
