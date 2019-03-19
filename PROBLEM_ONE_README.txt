For problem one I made a simple perl script that contains a subroutine for finding the CIDR bit for any netmask.
Within the perl script itself I have some simple test code for testing the various netmasks to ensure each one outputs the correct CIDR bit.
The constraints noted that only the external Socket.pm library could be used with Perl, and I didn't see how Socket.pm could be used to find a CIDR bit of a netmask, so I opted to keep the code simple with if/elsif statements.
I didn't want to overthink this first problem, so I opted for the simplest route given my constraints.

To test the subroutine, simply put any netmask under the __DATA__ portion of the script. Currently I have placed every netmask, and the example unsuccessful netmask, as tests to ensure the function outputs the correct results.

To run this script, have a perl interpreter downloaded, place Problem_One.pl in the folder you'd like, then navigate to the folder in the command line and type "perl Problem_One.pl" or on a UNIX-based system you should be able to run the script directly.