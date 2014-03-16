use 5.010001;
use warnings;
use strict;
use ExtUtils::MakeMaker;


my %prereqs_os_specific;
if ( $^O eq 'MSWin32' ) {
    %prereqs_os_specific = (
        'Term::Size::Win32'    => 0,
        'Win32::Console::ANSI' => 0,
    );
}


WriteMakefile(
    PL_FILES         => {},
    MIN_PERL_VERSION => '5.010001',
    LICENSE          => 'perl',
    AUTHOR           => 'Matthaeus Kiem <cuer2s@gmail.com>',
    NAME             => 'Term::Choose::Util',
    VERSION_FROM     => 'lib/Term/Choose/Util.pm',
    EXE_FILES        => [],
    BUILD_REQUIRES   => {
        'Test::More'            => 0,
    },
    PREREQ_PM => {
        'strict'                => 0,
        'warnings'              => 0,
        'Encode'                => 0,
        'Encode::Locale'        => 0,
        'Exporter'              => 0,
        'File::Basename'        => 0,
        'File::Spec::Functions' => 0,
        'List::Util'            => 0,
        'Term::Choose'          => '1.104',
        'Term::ReadKey'         => 0,
        'Text::LineFold'        => 0,
        'Unicode::GCString'     => 0,
        %prereqs_os_specific,
    },
    clean => {
        FILES => 'Term-Choose-Util-*',
    },
);