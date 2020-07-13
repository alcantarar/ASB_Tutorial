# Script 3 Solutions
#%%  SOLUTION: Breakout 1

# read in data
outline = pd.read_csv('data/outline.csv',
                   header = None)
# # remove missing data 
outline[outline == -999] = 'NaN' # correct use of "=="
# plot data
ax.plot(outline[0], outline[1], linewidth = 3, color = 'black')
ax.plot(outline[2], outline[3], linewidth = 3, color = 'black')

#%%  SOLUTION: Breakout 2

# read in data
outline = pd.read_csv('data/outline.csv',
                   header = None)
# # remove missing data 
outline[outline == -999] = 'NaN'
# plot data
ax.plot(outline[0], outline[1], linewidth = 1, color = 'black') # change linewidth to 1
ax.plot(outline[2], outline[3], linewidth = 1, color = 'black') # change linewidth to 1

#%%  SOLUTION: Breakout 3

# read in data
outline = pd.read_csv('data/outline.csv',
                   header = None)
# # remove missing data 
outline[outline == -999] = 'NaN'
# plot data
ax.plot(outline[0], outline[1], linewidth = 1, color = 'black')
ax.plot(outline[2], outline[3], linewidth = 1, color = 'black')