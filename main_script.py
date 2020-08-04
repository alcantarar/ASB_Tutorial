#!/usr/bin/env python
'''
	main_script.py
	---------------------------------------------------------
	This is the ASB tutorial master Python script, the main 
	entry point for running this tutorial in Python. You will 
	not need to modify this file.

	Usage:
		$ python main_script.py
'''

def runFile(num, args):
	'''Execute an additional python script
	
		- num {int} the script number
		- args {dict} Additional global variables that need
		  to be defined for this script to run. 
	'''
	fn = 'python_scripts/script_%d.py' % num
	f = open(fn)
	code = compile(f.read(), fn, 'exec')
	exec(code, args)
	f.close()
	return None


def main():
	'''Run the tutorial

	   This function also gracefully handles when users 
	   do not have required third-party packages.
	'''
	try:
		import pandas as pd
		import matplotlib.pyplot as plt
		fig, ax = plt.subplots(1, 1)
		ax.axis('off')
		for i in range(1,6):
			runFile(i, {
				'pd': pd, 
				'plt': plt, 
				'ax': ax, 
				'fig': fig})
		plt.show()
	except ImportError as err:
		mod = str(err).split(' ')[-1].replace("'", '')
		msg = '\nERROR: %s is not installed. ' % mod
		msg += 'Try running:\n\n\t$ conda install %s' % mod
		print(msg)

if __name__ == '__main__':
	main()