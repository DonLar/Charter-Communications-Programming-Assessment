import os
import re
directory = 'testfiles'
regex = re.compile('([0-9a-f]{2}(?::[0-9a-f]{2}){5})', re.IGNORECASE)

out = open("Problem_Two_Output.txt","w")
lineCount = 0

for filename in os.listdir(directory):
	if filename.endswith(".txt"):
		lineCount = 0
		with open("testfiles/" + filename) as f:
			for line in f:
				lineCount += 1
				found = re.findall(regex,line)
				if found:
					out.write("File: " + filename + " | Line Number: " + str(lineCount) + " | MAC address: " + found[0] + "\n")
out.close()
		