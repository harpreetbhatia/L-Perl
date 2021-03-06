package Unix::Utilities;

use warnings;
use strict;
use Sys::Hostname;

# A namespace is a place to organize logically related code and data, all 
# subroutines and package variables declared in that namespace cannot be 
# accessed outside of that namespace unless you prepend the package name to 
# them or if the package exports the subroutines to other packages. This allows
# you to reuse names in different namespaces without worrying about collision.

# A package name is one or more identifiers separated by double colons.
# 
# By convention:
# - a module starts his name with uppercase letter;
# - a module should correspond to a path and filename of 'Module.pm' and it
#   should usually be located in a 'lib' directory. The path of this module is
#   lib/Unix/Utilities.pm;
# - is strongly recommended to declare a module version number.
#
# The .pm extension is what Perl uses to identify a given module. A module is
# simply a file that contains one or more packages, although it's generally
# recommended to have one package per module.

# It's also strongly recommended that module and package names correspond. For
# example, a file called 'System/Unix/BSD/Kernel.pm' should contain a package 
# named 'System::Unix::BSD::Kernel'.

# Package variables with our() builtin are better than fully qualified package
# variable like that '$Unix::Utilities::VARIABLE'. By convention, variables 
# declared with a package scope have uppercase identifiers.
our $VERSION = '0.001';
$VERSION = eval $VERSION;

# Subroutine that encapsulates a value, better than using local():
sub max_users {
    10000;
}

sub get_hostname {
    my $host = hostname();
    return $host;
}

sub get_id {
    my $id = getlogin || getpwuid($<) || 'other';
    return $id;
}


# When you use a package, it must return a true value. If it does not, the use
# fails at compile time. Putting a '1' at the end of the package solves this.
1;
