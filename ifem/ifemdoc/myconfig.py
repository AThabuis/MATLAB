import hglib
import os

client = hglib.open('.')
l = client.status(change='tip')
files = []
for t, f in l:
    if f.find(b'.ipynb') >= 0:
        files.append(f.decode("utf-8"))

print("update the following files:\n", files)
for f in files:
    os.system('jupyter nbconvert '+f)
