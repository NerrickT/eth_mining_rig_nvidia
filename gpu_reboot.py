"""
Reference sites:
    https://stackoverflow.com/questions/431684/how-do-i-cd-in-python

"""

import os
import time
import datetime
import sys # This allows for user input
import subprocess #just to call an arbitrary command e.g. 'ls'
from sys import version_info

py3 = version_info[0] > 2 # Creates boolean value for test that Python major version > 2


# Formated timestamp
ts = time.time() # This will grab the time

ft = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d_%H:%M:%S')


# Change to directory and make a temp file.
#os.chdir("/tmp")
#os.system("touch test_file" + ft + ".txt")



time.sleep(10)
os.chdir("/usr/local/claymore9.7")
os.system("tmux new -s ClayMore ./mine.sh")

