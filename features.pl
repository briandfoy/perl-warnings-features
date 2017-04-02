#!/Users/brian/bin/perls/perl5.22.0
use v5.10;
use feature qw();

my %warnings =
	map { $_ => 1 }
	grep { /^experimental::/ }
	keys %warnings::Offsets;

say join "\n", sort keys %warnings;

my %features = map { $_ => 1 } $] > 5.015006 ? keys %feature::feature : do {
	my @features;
	if ($] >= 5.010) {
		push @features, qw/switch say state/;
		push @features, 'unicode_strings' if $] > 5.011002;
	}
	@features;
};

print "\f";
say join "\n", sort keys %features;
