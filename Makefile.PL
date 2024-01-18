use 5.008005;
use strict;
use warnings;

use Alien::Base::Wrapper qw(WriteMakefile);

WriteMakefile(
	NAME => 'Digest::MD5',
	VERSION_FROM => 'lib/Digest/MD5.pm',
	PREREQ_PM => {
		'Digest::base' => '1.00',
		'XSLoader' => 0,
	},
	($] >= 5.005 ? (
		ABSTRACT_FROM  => 'lib/Digest/MD5.pm',
		AUTHOR => 'Michal Josef Spacek <michal.josef.spacek@gmail.com>',
	) : ()),
	'alien_requires' => {
		'Alien::OpenSSL' => 0,
	},
);
