'''
	python_scripts/script_1.py
	-------------------------------
'''

# read in data
peach = pd.read_csv('data/peach.csv',
                   header = None)
x, y = list(peach[0]), list(peach[1])
x.append(x[0])
y.append(y[0])

# plot data
ax.fill_between(x, y, color = 'orange')
ax.plot(x, y, color = 'black', linewidth = 2)
