# read in data
logo = pd.read_csv('data/ASB.csv',
                   header = None)
# plot data
ax.plot(logo[1], logo[0], linewidth = 7, color = 'black')