import csv
import pandas as pd
import os
import matplotlib.pyplot as plt
import datetime

fig, ax = plt.subplots(1, 1)
ax.axis('off')

#%%  Solution Breakout 3
# read in data
peach = pd.read_csv('data/peach.csv',
                   header = None)
x, y = list(peach[0]), list(peach[1])
x.append(x[0])
y.append(y[0])

# plot data
ax.fill_between(x, y, color = [0.8980, 0.3176, 0.1765])
ax.plot(x, y, color = 'black', linewidth = 1)

# %% SOLUTION: Breakout 3

# read in data
leaf = pd.read_csv('data/leaf.csv',
                   header = None) # Correct filename
# plot data
x, y = list(leaf[0]), list(leaf[1])
x.append(x[0])
y.append(y[0])

ax.fill_between(x, y, color = 'green')
ax.plot(x, y, color = 'black', linewidth = 2)

#%%  SOLUTION: Breakout 2

# read in data
outline = pd.read_csv('data/outline.csv',
                   header = None)
# # remove missing data 
outline[outline == -999] = 'NaN'
# plot data
ax.plot(outline[0], outline[1], linewidth = 1, color = 'black')
ax.plot(outline[2], outline[3], linewidth = 1, color = 'black')

#%%  SOLUTION: Breakout 3
# read in data
logo = pd.read_csv('data/ASB.csv',
                   header = None)
# plot data
ax.plot(logo[0], logo[1], linewidth = 4, color = 'black')

#%%  SOLUTION: Breakout 3
# today's date
year = 'Virtual ' + str(datetime.datetime.now().year) # Add Virtual
# plot text
ax.text(2.5,-3.5, year, fontsize = 16, fontweight = 'bold')

plt.show()