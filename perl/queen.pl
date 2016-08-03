#!/usr/bin/perl

#----------------------------------------------------------------------
# -- dump function is giving each element their respective symbols
#----------------------------------------------------------------------
sub dump() {
	my ($i, $j); # -- private variables refer to main for other variables
	print(sprintf("%s\n", $head)); #-- this statment is returning a formatted string. head is returning hash lines while the %s is a string placeholder.
	for ($i = 0; $i < $size; $i++){
		$l = "";
		for ($j = 0; $j < $size; $j++){ # what is size doing?
			if ( $bd[$i * $size + $j] ) {
				$l .= " Q"; # the " .= " operator is the concatenation assignment operator. so it will concatenate the "O" in the string. "qw" means quote word operator.equivilent to quotes
			} else {
				$l .= " -";
			}
		}
		print(sprintf("%s\n",$l));
	}	
}


sub initBd() {
	for ($i = 0; $i < $size ; $i++) {
		for ($j = 0; $j < $size; $j++) {
			$bd[$i * $size + $j] = 0;
		}
	}
}


sub isValidPos() {
	my ($x, $y) = @_;
	my ($i, $c, $j0, $j1);
		for ($i = $x-1, $c = 1; $i >= 0; $i--, $c++){
			if ($bd[$i * $size + $y]){
				return 0;
			}
			
			$j0 = $y - $c;
			if ($j0 >= 0 && $bd[ $i * $size + $j0] ){
				return 0;
			}
			
			$j1 = $y + $c;
			if ($j1 < $size && $bd[$i * $size + $j1] ){
				return 0;
			}
		}
		return 1;
}

sub checkPos() {
	my ($x, $y) = @_;
	my ($j);
		for ($j = $y; $j < $size; $j++){
			if (&isValidPos($x, $j)) {
				$bd[$x * $size + $j] = 1;
				if ($x + 1 >= $size) {
					&dump();
					$bd[$x * $size + $j] = 0;
					
					return 0;
				}
				if (! &checkPos($x+1, 0)){
					return 0;
				}
				$bd[$x * $size + $j] = 0;
			}
		}
		return 1;
}


sub main() {
	$size = 8;
	for ($i = 0; $i <= $#ARGV; $i++){ # -- $#ARGV is a reference to a command line argument. Specifically though this variable $#ARGV is a subscript of the last element of the @ARGV array
		if ("-s" eq $ARGV[$i]){
			$i++;
			$size = $ARGV[$i];
		}
	}
	
	$head = "";
	for ($i = 0; $i < $size; $i++){
		$head .= "--";
	}
	
	&initBd();
	$t1 = time();
	&checkPos(0, 0);
	$t2 = time();
	print(sprintf("Elapsed time = %d\n", ($t2 - $t1) * 1000 ));
}

&main();
exit(0);