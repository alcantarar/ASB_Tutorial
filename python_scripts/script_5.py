#!/usr/bin/env python
'''
	python_scripts/script_5.py
	--------------------------------------------------------
	This script is a working file for this tutorial. You
	will need to edit this file to implement reviewer
	comments.

	You may run this script individually via

		$ python python_scripts/script_5.py
'''
import datetime

def drawSubtitle():
	# get current year
	msg = str(datetime.datetime.now().year)

	# plot text
	ax.text(
		x=2.5,
		y=-4,
		s=msg,
		fontsize=24,
		color='black',
		fontweight='bold')

# Solution
# def drawSubtitle():
# 	msg = 'Reviewer 2\n is the best'

# 	# plot text
# 	ax.text(
# 		x=2.5,
# 		y=-4,
# 		s=msg,
# 		fontsize=24,
# 		color='green',
# 		fontweight='bold')

# You will not need to edit the code below
if __name__ == '__main__':
	# We are running this script on its own
	import matplotlib.pyplot as plt
	fig, ax = plt.subplots(1, 1)

	ax.set_xlim(-10, 60)
	ax.set_ylim(-10, 10)
	ax.axis('off')
	drawSubtitle()
	plt.show()
else:
	# We are running this script from within main_script.py
	# Thus all the dependencies and globals have already 
	# been imported.
	drawSubtitle()