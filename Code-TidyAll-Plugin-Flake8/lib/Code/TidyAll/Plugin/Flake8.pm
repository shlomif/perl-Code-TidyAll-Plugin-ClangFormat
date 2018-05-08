package Code::TidyAll::Plugin::Flake8;

use Moo;
use String::ShellQuote qw/ shell_quote /;

extends 'Code::TidyAll::Plugin';

sub validate_file
{
    my ( $self, $fn ) = @_;
    my $cmd = shell_quote( 'flake8', $fn );
    if (`$cmd`)
    {
        die 'not valid';
    }
    return;
}

1;

=head1 NAME

Code::TidyAll::Plugin::Flake8 - run flake8 using Code::TidyAll

=head1 SYNOPSIS

In your C<.tidyallrc>:

    [Flake8]
    select = **/*.py

=head1 DESCRIPTION

This speeds up the flake8 python tool ( L<http://flake8.pycqa.org/en/latest/>
) checking by caching results using L<Code::TidyAll> .

It was originally written for use by PySolFC
( L<http://pysolfc.sourceforge.net/> ), an open suite of card solitaire
games.
