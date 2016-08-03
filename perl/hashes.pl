#!/usr/bin/perl
%a_hash = (
	key1 => value1,
	key2 => value2
);

foreach $key_value (keys %a_hash){
	print "$key_value -> $a_hash{$ke_value}\n";
}