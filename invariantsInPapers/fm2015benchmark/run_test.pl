#!/usr/bin/perl
use strict;
use warnings;
use POSIX qw(strftime);

my $logtime = strftime "%Y%m%d-%H%M", localtime;

my $testlistName = shift;
die "no testlist specified" unless defined ($testlistName);
my $timeout = shift;
die "no timeout specified" unless defined ($timeout);
my $algorithm = shift;
die "no algorithm specified" unless defined ($algorithm);
my $preprocess = shift;
die "no preprocess specified" unless defined ($preprocess);

my $logname = "${testlistName}_${timeout}_${algorithm}_${preprocess}_$logtime";
my $progName = "timeout $timeout ./run";


open (TESTLIST, "<", $testlistName) 
    or die "Can't open input file '$testlistName': $!\n";
open (FULLLOG, ">", "./test/results/${logname}_fulllog.txt") 
    or die  "Can't open full log file '/test/results/${logname}_fulllog.txt': $!\n";
open (SHORTLOG, ">", "./test/results/${logname}_results.csv") 
    or die  "Can't open full log file  '/test/results/${logname}_results.csv': $!\n";

print FULLLOG "Testset: $testlistName\t timeout $timeout\n";
print SHORTLOG "Name,Result,Time,Comment (timeout was $timeout) (algorithm was $algorithm) (preprocess was $preprocess)\n";

my $count = 0;
my $succeeded = 0;
my $failed = 0;
my $weirdResult = 0;
while (my $line = <TESTLIST>){
    $count++;
    next if $line =~ /^\s*#/;
    chomp $line;
    my $testname = $line;
    #my ($testname,$testfilename,$comment) = split (',' , $line);
    next unless defined $testname;

    print "$count:\tRunning test $testname\n";
    my $cmd = "$progName $testname $algorithm $preprocess";
    my $result = `$cmd`;
    print  "***********************************************\n";
    print FULLLOG "***********************************************\n";
    print FULLLOG $cmd ."\n";
    print FULLLOG $result ."\n";
    
    if ($result =~ /Solve finished/){
	$succeeded++;
	my($time) = $result =~ /(\d+) ms/;
	print "success in $time\n";
	print SHORTLOG "$testname,success,$time\n";
    }elsif ($result =~ /Failed/) {
	$failed++;
	print SHORTLOG "$testname,failure,TO\n";
	print "Failure\n";
    } else {
	$weirdResult++;
	print SHORTLOG "$testname,timeout,TO\n";
	print "neither success nor failure\n"
    }
    print $cmd . "\n";
    print $result . "\n";
}

print "$succeeded success\t$failed failures\t$weirdResult weird\t$count total\n";
