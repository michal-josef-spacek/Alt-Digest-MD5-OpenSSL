use 5.008005;
use strict;
use warnings;

use Alien::Base::Wrapper qw(WriteMakefile);

WriteMakefile(
	NAME => 'Digest::MD5',
	VERSION_FROM => 'lib/Digest/MD5.pm',
	BUILD_REQUIRES => {
		'Alien::Base::Wrapper' => 0.32,
		'ExtUtils::MakeMaker' => '6.52',
	},
	CONFIGURE_REQUIRES => {
		'Alien::Base::Wrapper' => 0.32,
		'ExtUtils::MakeMaker' => '6.52',
	},
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
