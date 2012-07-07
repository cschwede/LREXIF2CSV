local LrApplication = import 'LrApplication'
local LrDialogs = import 'LrDialogs'
local LrTasks = import 'LrTasks'


function Save2CSV()
   local path = LrDialogs.runSavePanel({
      title = 'Save to:',
      requiredFileType = 'csv',
      canCreateDirectories = true,
   })
   if path then 
      string = ""
      stat = {}
      LrTasks.startAsyncTask(function() 
         local file = io.open(path, 'w')
         local catalog = LrApplication.activeCatalog()
         local cat_photos = catalog:getTargetPhotos()
         for i, photo in ipairs(cat_photos) do 
            file:write(photo:getRawMetadata('path'), ';')
            file:write(photo:getFormattedMetadata('aperture'), ';')
            file:write(photo:getFormattedMetadata('shutterSpeed'), ';')
            file:write(photo:getFormattedMetadata('isoSpeedRating'), ';')
            file:write(photo:getFormattedMetadata('focalLength'), ';')
            file:write('\n')
         end 
         file:close()
      end )
   end
end


Save2CSV()
