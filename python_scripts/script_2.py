'''
	python_scripts/script_2.py
	-------------------------------
'''
# read in data
leaf = pd.read_csv('data/leaf.csv',
                   header = None)
# plot data
x, y = list(leaf[0]), list(leaf[1])
x.append(x[0])
y.append(y[0])

ax.fill_between(x, y, color = 'green')
ax.plot(x, y, color = 'black', linewidth = 2)