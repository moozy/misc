binmode STDIN, ':utf8';
binmode STDOUT, ":encoding(utf8)";
use utf8;

while ($line = <>) {
	foreach $char (split //, $line) {
	if ($char eq ' ') {
		print $char; }
	else {
			print chr((ord($char) + 65248));
		}
	}
	exit;
}
