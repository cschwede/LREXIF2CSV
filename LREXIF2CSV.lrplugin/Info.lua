return{
	LrSdkVersion = 3.0,
	LrSdkMinimumVersion = 3.0,
	
	LrToolkitIdentifier = 'LREXIF2CSV',

	LrPluginName = 'LREXIF2CSV',
	
   LrExportMenuItems = {
		title = 'Exports Lightroom EXIF metadata to CSV',
		file = 'LREXIF2CSV.lua',
		enabledWhen = 'photosAvailable',
	},
}
