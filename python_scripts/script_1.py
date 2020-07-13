#%%  script_1

import csv
import pandas as pd
import os
import matplotlib.pyplot as plt
import datetime

abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname + '\..')

# read in data
peach = pd.read_csv('data/peach.csv',
                   header = None)
x, y = list(peach[0]), list(peach[1])
x.append(x[0])
y.append(y[0])

#%% 
# plot data

fig, ax = plt.subplots(1, 1)
ax.fill_between(x, y, color = 'orange')
ax.plot(x, y, color = 'black', linewidth = 2)

# %% script_2

# read in data
leaf = pd.read_csv('data/leaf.csv',
                   header = None)
# plot data
x, y = list(leaf[0]), list(leaf[1])
x.append(x[0])
y.append(y[0])

ax.fill_between(x, y, color = 'green')
ax.plot(x, y, color = 'black', linewidth = 2)

#%% script_3

# read in data
outline = pd.read_csv('data/outline.csv',
                   header = None)
# # remove missing data 
outline[outline == -999] = 'NaN';
# plot data
ax.plot(outline[0], outline[1], linewidth = 3, color = 'black');
ax.plot(outline[2], outline[3], linewidth = 3, color = 'black');

#%% script_4

# read in data
logo = pd.read_csv('data/ASB.csv',
                   header = None)
# plot data
ax.plot(logo[0], logo[1], linewidth = 7, color = 'black');

# %% script_5

# today's date
year = datetime.datetime.now().year
# plot text
ax.text(2.5,-3.5, year, fontsize = 32, fontweight = 'bold')