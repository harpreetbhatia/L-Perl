package Person3;

use strict;

# How to provide attributes to class with a constructor

# The constructor
sub new {
    my $class = shift;      # The class name, passed as the first argument
    my $self = {@_};        # Get arguments passed to new()
    bless $self, $class;

    return $self;
}

1;
__END__
See main3.pl, how to send attributes to this class
