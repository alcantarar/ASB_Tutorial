# Script 5 Solutions
#%%  SOLUTION: Breakout 1
# today's date
year = str(datetime.datetime.now().year) # Use year not month
# plot text
ax.text(2.5,-3.5, year, fontsize = 24, fontweight = 'bold')

#%%  SOLUTION: Breakout 2
# today's date
year = 'Virtual ' + str(datetime.datetime.now().year) # Add Virtual
# plot text
ax.text(2.5,-3.5, year, fontsize = 24, fontweight = 'bold')

#%%  SOLUTION: Breakout 3
# today's date
year = 'Virtual ' + str(datetime.datetime.now().year) # Add Virtual
# plot text
ax.text(2.5,-3.5, year, fontsize = 16, fontweight = 'bold')