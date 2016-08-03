#!/usr/bin/perl

@months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
@days = qw( Sun Mon Tue Wed Thu Fri Sat Sun );

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

$datestring = localtime();
print "Local date and time $datestring\n";