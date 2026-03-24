requires 'Alien::Base::Wrapper', 0.32;
requires 'Alien::OpenSSL';

on 'test' => sub {
	requires 'Encode';
	requires 'MIME::Base64';
	requires 'Test::Alien::Diag';
	requires 'Test::More';
	requires 'Test::NoWarnings';
};
