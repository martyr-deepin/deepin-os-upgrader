#!/usr/bin/env perl
use 5.012;
use warnings;

sub from_deepin2014_1
{
	download_and_exe("https://gitcafe.com/Deepin/deepin-os-upgrader/raw/release_forward_slash_2014.2.1/from2014.1to2014.2.sh");
}

sub from_deepin2014_2RC
{
	download_and_exe("https://gitcafe.com/Deepin/deepin-os-upgrader/raw/release_forward_slash_2014.2.1/from2014.2RCto2014.2.sh");
}


sub download_and_exe
{
	my $script = "/tmp/upgrade_to_2014.2.sh";
	my $url = shift;
	qx(wget $url -O $script);
	system "sudo bash $script";
}


print "
a. 2014.1
b. 2014.2RC
";
if ( $ENV{LANG} =~ /^zh_CN/ )
{
	print "请选择你现在使用的deepin 版本(a 或 b):";
}
else
{
	print "Please select deepin version you are using (a or b): ";
}

my $input = <STDIN>;
if ( $input =~ /^a/)
{
	from_deepin2014_1();
}
elsif ( $input =~ /^b/ )
{
	from_deepin2014_2RC();
}
else
{
	print "Goodbye!";
}
