# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Perl/Tk frontend to MetaTrans.';
author 'Jan Pomikalek <xpomikal@fi.muni.cz>';
author 'Michal Špaček <skim@cpan.org>';
install_script 'bin/metatrans';
license 'perl-5';
name 'App-MetaTrans';
requires 'App-MetaTrans-RunTrans' => '1.06';
requires 'Config::Find' => 0;
requires 'Config::General' => 0;
requires 'Encode' => 0;
requires 'LWP::UserAgent' => 0;
requires 'MetaTrans' => '1.06';
requires 'Tk' => 804.027;
requires 'Tk::BrowseEntry' => 0;
requires 'Tk::DialogBox' => 0;
requires 'Tk::HList' => 0;
requires 'Tk::ItemStyle' => 0;
requires 'Tk::LabFrame' => 0;
requires 'Tk::ROText' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=MetaTrans';
resources 'homepage' => 'https://github.com/tupinek/App-MetaTrans';
resources 'repository' => 'git://github.com/tupinek/App-MetaTrans';
version '1.06';

# Run.
WriteAll();

sub MY::postamble {
	return "install :: install_config\n\ninstall_config :\n\t".
		'$(NOECHO)$(ECHO_N) "Installing configuration file to "; '.
		'(cp -f config/metatrans.conf /etc/ 2> /dev/null && echo /etc/metatrans.conf) '.
		'|| '.
		'(cp -f config/metatrans.conf '.$ENV{'HOME'}.'/.metatrans '.
		'&& echo '.$ENV{'HOME'}.'/.metatrans)';
}

