#!/usr/bin/env python
'''
	python_scripts/script_3.py
	--------------------------------------------------------
	This script is a working file for this tutorial. You
	will need to edit this file to implement reviewer
	comments.

	You may run this script individually via

		$ python python_scripts/script_3.py
		
'''

# Solution
def drawStemAndHalo():
 	# read in data
 	outline = pd.read_csv(
		filepath_or_buffer='data/outline.csv',
		header = None)

 	# remove missing data 
 	outline[outline == -999] = 'NaN'

 	width = 10

 	# plot data
 	ax.plot(outline[0], outline[1], 
		linewidth=width, 
		color='black')

 	ax.plot(outline[2], outline[3], 
		linewidth=width, 
		color='black')


# You will not need to edit the code below
if __name__ == '__main__':
	# We are running this script on its own
	import pandas as pd
	import matplotlib.pyplot as plt
	fig, ax = plt.subplots(1, 1)		
	ax.axis('off')
	drawStemAndHalo()
	plt.show()
else:
	# We are running this script from within main_script.py
	# Thus all the dependencies and globals have already 
	# been imported.
	drawStemAndHalo()