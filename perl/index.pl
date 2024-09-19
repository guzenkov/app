use WebService::Plotly;

my $user = USERNAME_HERE;
my $login = WebService::Plotly->signup( $user, EMAIL_HERE );
warn "temp password is $login->{tmp_pw}";

my $plotly = WebService::Plotly->new( un => $user, key => $login->{api_key} );

my $x0 = [ 1,  2,  3,  4 ];
my $y0 = [ 10, 15, 13, 17 ];
my $x1 = [ 2,  3,  4,  5 ];
my $y1 = [ 16, 5,  11, 9 ];
my $response = $plotly->plot( $x0, $y0, $x1, $y1 );

print "url is: $response->{url}";
print "filename on our server is: $response->{filename}";
