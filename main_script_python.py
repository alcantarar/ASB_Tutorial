import csv
import pandas as pd
import os
import matplotlib.pyplot as plt
import datetime

abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname + '\..')

fig, ax = plt.subplots(1, 1)
ax.axis('off')

exec(open('python_scripts\script_1.py').read())

exec(open('python_scripts\script_2.py').read())

exec(open('python_scripts\script_3.py').read())

exec(open('python_scripts\script_4.py').read())

exec(open('python_scripts\script_5.py').read())

print('Great job!')