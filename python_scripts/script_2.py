#!/usr/bin/env python
'''
	python_scripts/script_2.py
	--------------------------------------------------------
	This script is a working file for this tutorial. You
	will need to edit this file to implement reviewer
	comments.

	You may run this script individually via

		$ python python_scripts/script_2.py
'''


def drawLeaf():
 	'''Draw the leaf of the peach'''
 	# read in data
 	leaf = pd.read_csv(
		filepath_or_buffer='data/leaf.csv', 
		header=None)

 	# plot data
 	x, y = list(leaf[0]), list(leaf[1])
 	x.append(x[0])
 	y.append(y[0])

 	ax.fill(x, y,
		color=(0.792, 0.647, 0.278))
	
 	ax.plot(x, y, 
		color='black', 
		linewidth=2)


# You will not need to edit the code below
if __name__ == '__main__':
	# We are running this script on its own
	import pandas as pd
	import matplotlib.pyplot as plt
	fig, ax = plt.subplots(1, 1)		
	ax.axis('off')
	drawLeaf()
	plt.show()
else:
	# We are running this script from within main_script.py
	# Thus all the dependencies and globals have already 
	# been imported.
	drawLeaf()