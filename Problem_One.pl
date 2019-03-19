#!/usr/local/bin/perl
#Made by Donald Larson
use strict;
use warnings;

#This is a VERY basic perl subroutine that converts any netmask to its correct bit, and if an invalid netmask is passed it returns -1
#While it may not be the most efficient, I was limited in what additional libraries I could use only to Socket.pm
#Since I could not see how Socket.pm could be used in this specific situation for this subroutine, I did not use it
#instead I opted to just do simple if/elsif statements to quickly and easily retrieve the correct CIDR bit, as there did not appear to be a simpler way
#I would have used a switch statement, but that would have used an external library, so I didn't think I should.
sub netmask_to_bits {
	my($netmask) = @_;
	if($netmask eq "128.0.0.0") 			{return 1;}
	elsif($netmask eq "192.0.0.0") 			{return 2;}
	elsif($netmask eq "224.0.0.0") 			{return 3;}
	elsif($netmask eq "240.0.0.0") 			{return 4;}
	elsif($netmask eq "248.0.0.0") 			{return 5;}
	elsif($netmask eq "252.0.0.0") 			{return 6;}
	elsif($netmask eq "254.0.0.0") 			{return 7;}
	elsif($netmask eq "255.0.0.0") 			{return 8;}
	elsif($netmask eq "255.128.0.0") 		{return 9;}
	elsif($netmask eq "255.192.0.0") 		{return 10;}
	elsif($netmask eq "255.224.0.0") 		{return 11;}
	elsif($netmask eq "255.240.0.0") 		{return 12;}
	elsif($netmask eq "255.248.0.0") 		{return 13;}
	elsif($netmask eq "255.252.0.0") 		{return 14;}
	elsif($netmask eq "255.254.0.0") 		{return 15;}
	elsif($netmask eq "255.255.0.0") 		{return 16;}
	elsif($netmask eq "255.255.128.0") 		{return 17;}
	elsif($netmask eq "255.255.192.0") 		{return 18;}
	elsif($netmask eq "255.255.224.0") 		{return 19;}
	elsif($netmask eq "255.255.240.0") 		{return 20;}
	elsif($netmask eq "255.255.248.0") 		{return 21;}
	elsif($netmask eq "255.255.252.0") 		{return 22;}
	elsif($netmask eq "255.255.254.0") 		{return 23;}
	elsif($netmask eq "255.255.255.0") 		{return 24;}
	elsif($netmask eq "255.255.255.128") 	{return 25;}
	elsif($netmask eq "255.255.255.192") 	{return 26;}
	elsif($netmask eq "255.255.255.224") 	{return 27;}
	elsif($netmask eq "255.255.255.240") 	{return 28;}
	elsif($netmask eq "255.255.255.248") 	{return 29;}
	elsif($netmask eq "255.255.255.252") 	{return 30;}
	elsif($netmask eq "255.255.255.254") 	{return 31;}
	elsif($netmask eq "255.255.255.255") 	{return 32;}
	else {return -1;}
}

#Below is test code for the above perl subroutine. It grabs all the netmasks in the data and tests them.
#I currently have it set to test every netmask to see if it outputs the correct CIDR bit, but feel free to test any needed.
#I didn't want to overthink this problem.
foreach my $line(<DATA>){
	chomp($line);
	my($bit) = netmask_to_bits($line);
	print "NETMASK: $line | CIDR BITS: $bit \n";
}

__DATA__
128.0.0.0
192.0.0.0
224.0.0.0
240.0.0.0
248.0.0.0
252.0.0.0
254.0.0.0
255.0.0.0
255.128.0.0
255.192.0.0
255.224.0.0
255.240.0.0
255.248.0.0
255.252.0.0
255.254.0.0
255.255.0.0
255.255.128.0
255.255.192.0
255.255.224.0
255.255.240.0
255.255.248.0
255.255.252.0
255.255.254.0
255.255.255.0
255.255.255.128
255.255.255.192
255.255.255.224
255.255.255.240
255.255.255.248
255.255.255.252
255.255.255.254
255.255.255.255
255.1.2.3