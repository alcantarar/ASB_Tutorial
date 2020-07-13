# Script 2 Solutions
# %% SOLUTION: Breakout 1 

# read in data
leaf = pd.read_csv('data/leaf.csv',
                   header = None) # Correct filename
# plot data
x, y = list(leaf[0]), list(leaf[1])
x.append(x[0])
y.append(y[0])

ax.fill_between(x, y, color = 'green')
ax.plot(x, y, color = 'black', linewidth = 2)

# %% SOLUTION: Breakout 2 

# read in data
leaf = pd.read_csv('data/leaf.csv',
                   header = None) # Correct filename
# plot data
x, y = list(leaf[0]), list(leaf[1])
x.append(x[0])
y.append(y[0])

ax.fill_between(x, y, color = [0.5686, 0.5882, 0.3765])
ax.plot(x, y, color = 'black', linewidth = 2)

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