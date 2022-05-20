import sys

import shapefile
from PIL import Image, ImageDraw

def display_shapefile(name, iwidth=500, iheight=500):
	r = shapefile.Reader(name)
	mleft, mbottom, mright, mtop = r.bbox
	# 地図の単位
	mwidth = mright - mleft
	mheight = mtop - mbottom
	# 地図の単位をイメージの単位に変換
	hscale = iwidth/mwidth
	vscale = iheight/mheight
	img = Image.new("RGB", (iwidth, iheight), "white")
	draw = ImageDraw.Draw(img)
	for shape in r.shapes():
		pixles = [
			(int(iwidth - ((mright - x) * hscale)), int((mtop - y) * vscale))
			for x, y in shape.points]
		if shape.shapeType == shapefile.POLYGON:
			draw.polygon(pixles, outline='black')
		elif shape.shapeTyep == shapefile.POLYLINE:
			draw.line(pixles, fill='black')
	img.show()

if __name__ == '__main__':
	display_shapefile(sys.argv[1], 700, 700)
