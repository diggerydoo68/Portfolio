#!/usr/bin/perl

sub text{
@t = "I am a string!\n";

if (@t == 1){
	print @t;
	}else{
		print "There is no String Here!\n";
	}
}

sub text2 {
	@t2 = "I am the second part of the string\n";
	print @t2;
}

text;
text2;