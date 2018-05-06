#!/usr/local/bin/python3
from os import system, path, getcwd

filePath = "assets/alexa-20180320.csv"
print("read file: " + filePath)
with open(filePath) as f:
    content = f.readlines()
lines = [x.strip() for x in content]

for i in range(0, 10):
    siteName = lines[i].split(",")[1]
    print("Dealing with " + str(i) + " " + siteName)
    script = "scripts/extractArchive.sh"
    siteName = siteName.replace(".", "_")
    command = "sh %s %s" % (script, siteName)
    print("run command %s" % command)
    system(command)
