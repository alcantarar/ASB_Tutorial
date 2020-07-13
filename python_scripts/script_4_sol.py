# Script 4 Solutions
#%%  SOLUTION: Breakout 1
# read in data
logo = pd.read_csv('data/ASB.csv',
                   header = None)
# plot data
ax.plot(logo[0], logo[1], linewidth = 7, color = 'black') # switched axes

#%%  SOLUTION: Breakout 2
# read in data
logo = pd.read_csv('data/ASB.csv',
                   header = None)
# plot data
ax.plot(logo[0], logo[1], linewidth = 4, color = 'black') # change linewidth to 4

#%%  SOLUTION: Breakout 3
# read in data
logo = pd.read_csv('data/ASB.csv',
                   header = None)
# plot data
ax.plot(logo[0], logo[1], linewidth = 4, color = 'black')