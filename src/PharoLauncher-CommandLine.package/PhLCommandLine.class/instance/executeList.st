command line - entry point
executeList
	self context stdout in: [ :out |
		PhLDirectoryBasedImageRepository default
			imageNames do: [ :img | out << img; lf ] ]