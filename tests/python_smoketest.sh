#!/usr/bin/env bash
#
# python_smoketest.sh
# ---------------------------------------------
# Just run all the Python script and see 
# what happens.
#


echo 'Testing scripts' \
	&& echo 'Show me a peach body! (script_1.py)' \
	&& python_scripts/script_1.py \
	&& echo 'Show me a leaf! (script_2.py)' \
	&& python_scripts/script_2.py \
	&& echo 'Show me a stem and halo! (script_3.py)' \
	&& python_scripts/script_3.py \
	&& echo 'Show me a the logo! (script_4.py)' \
	&& python_scripts/script_4.py \
	&& echo 'Show me the text! (script_5.py)' \
	&& python_scripts/script_5.py \

echo 'All together now. Running main_script.py' \
	&& main_script.py

echo 'Smoketest complete'