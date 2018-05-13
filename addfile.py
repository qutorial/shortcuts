#!/usr/bin/python3
import os
import sys
import re
from pathlib import Path
from subprocess import call

def e(s, code):
  print(s, file = sys.stderr)
  sys.exit(code)

if len(sys.argv) <  2:
  e("Usage: addfile.py ~/.config/somefiles", 1)

for arg in sys.argv[1:]:
  f=os.path.abspath(arg)
  name=os.path.basename(f)
  home = str(Path.home())
  local=f.replace(home, '~')

  call(["cp", "-v", f, "./"])
  call(["git", "add", name])

  with open("install.sh", "a") as install:
    install.write("\ncurl https://raw.https://raw.githubusercontent.com/qutorial/shortcuts/master/%s > %s" % (name, local))
  call(["git", "add", "install.sh"])

  with open("update.sh", "a") as update:
    update.write("\ncp %s ./" % local)
  call(["git", "add", "update.sh"])

call(["git", "commit", "-m", "\"Added %s\"" % " and ".join(sys.argv[1:])])
call(["git", "push"])
