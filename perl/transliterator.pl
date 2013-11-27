#!/usr/bin/perl
use utf8;
use open qw(:std :utf8);
binmode STDIN, ':utf8';
binmode STDOUT, ":encoding(utf8)";

$qwertyq = q#qwertyuiop[]asdfghjkl;'\\zxcvbnm,.\/QWERTYUIOP{}ASDFGHJKL:\"|ZXCVBNM<>?`#;
$russian = q#йцукенгшщзхъфывапролджэ\\ячсмитьбю.ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭ\/ЯЧСМИТЬБЮ,ё#;


while (<>) {
	if (/[a-zA-Z]/) {
		eval(qq#tr/$qwertyq/$russian/#); print;
	} else {
		eval(qq#tr/$russian/$qwertyq/#); print;
	}
}
