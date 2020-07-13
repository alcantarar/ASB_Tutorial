# Script 1 Solutions
#%%  Solution Breakout 1
abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname + '\..')

# read in data
peach = pd.read_csv('data/peach.csv',
                   header = None)
x, y = list(peach[0]), list(peach[1])
x.append(x[0])
y.append(y[0])

# plot data
ax.fill_between(x, y, color = [0.8980, 0.3176, 0.1765]) # RGB values for orange
ax.plot(x, y, color = 'black', linewidth = 2)


#%%  Solution Breakout 2
abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname + '\..')

# read in data
peach = pd.read_csv('data/peach.csv',
                   header = None)
x, y = list(peach[0]), list(peach[1])
x.append(x[0])
y.append(y[0])

# plot data
ax.fill_between(x, y, color = [0.8980, 0.3176, 0.1765])
ax.plot(x, y, color = 'black', linewidth = 1)  # change to 1


#%%  Solution Breakout 3
abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname + '\..')

# read in data
peach = pd.read_csv('data/peach.csv',
                   header = None)
x, y = list(peach[0]), list(peach[1])
x.append(x[0])
y.append(y[0])

# plot data
ax.fill_between(x, y, color = [0.8980, 0.3176, 0.1765])
ax.plot(x, y, color = 'black', linewidth = 1)