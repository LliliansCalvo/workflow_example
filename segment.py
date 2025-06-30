import sys
from skimage.io import imread, imsave
from cellpose import models

img_path = sys.argv[1]
out_path = sys.argv[2]

img = imread(img_path)
model = models.CellposeModel(gpu=False)
masks, flows, styles = model.eval(img, diameter=None)
imsave(out_path, masks.astype("uint16"))
