use strict;
use warnings;
use LWP::UserAgent;
use IO::Socket::SSL;

my $ua = LWP::UserAgent->new(cookie_jar=>{});

$ua->ssl_opts(
    'SSL_verify_mode' => IO::Socket::SSL::SSL_VERIFY_NONE, 
    'verify_hostname' => 0
);

my $link = 'https://rhodapickens.com/_next/image?url=%2Frhoda.png&w=640&q=75';

my $response = $ua->mirror($link, './rhoda.png');

unless($response->is_success()) {
    die $response->status_line();
}

print("\nCompleted")