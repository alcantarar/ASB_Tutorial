#!/usr/bin/env python
'''
	python_scripts/script_4.py
	--------------------------------------------------------
	This script is a working file for this tutorial. You
	will need to edit this file to implement reviewer
	comments.

	You may run this script individually via

		$ python python_scripts/script_4.py
'''

# def drawASBLogo():
# 	'''Draw the ASB logo'''
# 	# read in data
# 	logo = pd.read_csv(
# 		filepath_or_buffer='data/ASB.csv',
# 		header=None)

# 	# plot data
# 	ax.plot(logo[0], logo[1], 
# 		linewidth=7, 
# 		color='black')

# # Solution
def drawASBLogo():
 	'''Draw the ASB logo'''
 	# read in data
 	logo = pd.read_csv(
		filepath_or_buffer='data/ASB.csv',
		header=None)

 	# plot data
 	ax.plot(logo[0], logo[1], 
		linewidth=7, 
		color='red')




# You will not need to edit the code below
if __name__ == '__main__':
	# We are running this script on its own
	import pandas as pd
	import matplotlib.pyplot as plt
	fig, ax = plt.subplots(1, 1)		
	ax.axis('off')
	drawASBLogo()
	plt.show()
else:
	# We are running this script from within main_script.py
	# Thus all the dependencies and globals have already 
	# been imported.
	drawASBLogo()