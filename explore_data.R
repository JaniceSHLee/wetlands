#### Access GLWD_v2 dataset ####

# 0/ Load libraries ####
library(terra)
library(tmap)

# 1/ Open files ####

# class 26 Tropical/subtropical peatland, forested
tpsf = rast("./files/glwdv2_tropical_peatlands/GLWD_v2_0_class_26_ha_x10.tif")
tpsf

tm_shape(tpsf) +
  tm_raster(col = "Band_1",
            palette = "viridis",
            style = "pretty") +
  tm_check_fix()

# protected areas from wdpa
