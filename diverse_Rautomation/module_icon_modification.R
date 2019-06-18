#-- modifying icons for the modules with magick

#-- help creating metadata (deprecated)
# 
# c=list.files("diverse_Rautomation/icons_original")
# d=list.files("_modules")
# write.csv(cbind(d,c, fill=TRUE), file = "diverse_Rautomation/metadata_prep.csv")

##--- read metadata

moduleinfo <- read.csv("diverse_Rautomation/metadata.csv")

moduleinfo$Status = as.character(moduleinfo$Status)
##--- create new icons
library (magick)

for (i in seq_along(moduleinfo$Status)){
  icon= magick::image_read_svg(paste0("diverse_Rautomation/icons_original/",moduleinfo$icon [i]))
  colorstatus = "lightgrey"
  
  ## add label on icon
  new=icon %>%
    image_annotate(moduleinfo$Status [i], gravity = "South", size = 12, 
                   location = "+0+15",
                   color = 'black',boxcolor = colorstatus, degrees = -10)
  
  
  magick::image_write(new, path =paste0("diverse_Rautomation/temp.png" ), format ="png", flatten = TRUE)
  new2=image_read("diverse_Rautomation/temp.png")
  
  magick::image_write(new2, path =paste0("_includes/icons/",moduleinfo$icon [i] ), format ="svg", flatten = TRUE)
  
}




### tests

tiger <- image_read_svg("http://jeroen.github.io/images/tiger.svg")

new=tiger %>%
  image_annotate("tiger", gravity = "South", size = 12, 
                 location = "+0+15",
                 color = 'black',boxcolor = "white", degrees = -10)
new

magick::image_write(new, path ="test.png", format ="png", flatten = TRUE)
magick::image_write(tiger, path ="test.html", format ="svg", flatten = TRUE)
