#!/usr/bin/env python
'''
	python_scripts/script_1.py
	--------------------------------------------------------
	This script is a working file for this tutorial. You
	will need to edit this file to implement reviewer
	comments.

	You may run this script individually via

		$ python_scripts/script_1.py		
'''

def drawBody():
	'Draw the peach body'
	# read in data
	peach = pd.read_csv('data/peach.csv',
					header = None)
	x, y = list(peach[0]), list(peach[1])
	x.append(x[0])
	y.append(y[0])

	# plot data
	ax.fill_between(x, y, color = 'orange')
	ax.plot(x, y, color = 'black', linewidth = 2)

# Solution
# def drawBody():
# 	'Draw the peach body'
# 	# read in data
# 	peach = pd.read_csv('data/peach.csv',
# 					header = None)
# 	x, y = list(peach[0]), list(peach[1])
# 	x.append(x[0])
# 	y.append(y[0])

# 	# plot data
# 	ax.fill_between(x, y, color = (0.506, 0.0, 0.937))
# 	ax.plot(x, y, color = 'black', linewidth = 2)


# You will not need to edit the code below
if __name__ == '__main__':
	# We are running this script on its own
	import pandas as pd
	import matplotlib.pyplot as plt
	fig, ax = plt.subplots(1, 1)		
	ax.axis('off')
	drawBody()
	plt.show()
else:
	# We are running this script from within main_script.py
	# Thus all the dependencies and globals have already 
	# been imported.
	drawBody()