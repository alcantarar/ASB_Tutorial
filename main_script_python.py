'''
	main_script_python.py
	--------------------------------
	The main file for running this tutorial in Python

	Usage:
		$ python main_script_python.py
'''

def runFile(num, args):
	fn = 'python_scripts/script_%d.py' % num
	f = open(fn)
	code = compile(f.read(), fn, 'exec')
	exec(code, args)
	f.close()


def main():
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
		print('Great job!')
		plt.show()
	except ImportError as err:
		mod = str(err).split(' ')[-1].replace("'", '')
		msg = '\nERROR: %s is not installed. Try running:\n\n\t$ conda install %s' % (mod, mod)
		print(msg)

if __name__ == '__main__':
	main()