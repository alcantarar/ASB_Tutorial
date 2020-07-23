'''
	python_scripts/script_3.py
	-------------------------------
'''

# read in data
outline = pd.read_csv('data/outline.csv',
                   header = None)
# # remove missing data 
outline[outline == -999] = 'NaN'
# plot data
ax.plot(outline[0], outline[1], linewidth = 3, color = 'black')
ax.plot(outline[2], outline[3], linewidth = 3, color = 'black')