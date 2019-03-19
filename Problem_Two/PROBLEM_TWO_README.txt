For problem two I decided to make a simple python script for searching through the text files.
It didn't require much work, I searched through each file, found a regex to locate the specific MAC address format that was being looked for, and would find the first in a text line.
The instructions mentioned only 'A' MAC address in a line, so I only grabbed the first, but the code could be easily adapted to find multiple in a text file line.
I placed all the results into an output.txt.

To run this script, download python, and then in your terminal navigate to this directory and type "python Problem_Two.py".
I'm sure this could definitely be improved upon, but seemed like a straightforward solution.
To test, place any text files in the "testfiles" folder. I currently have several files placed there for basic tests, and the output of running the script is created new each time as "Problem_Two_Output.txt".
