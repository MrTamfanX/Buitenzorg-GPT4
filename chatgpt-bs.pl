#!usr/bin/perl
#ChatGPT4 for CLI by Buitenzorg Syndicate

use LWP::UserAgent; 
use Term::ANSIColor;
use OpenAIGPT4;
use if $^O eq "MSWin32", Win32::Console::ANSI;

if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }

my $gpt4_api = OpenAIGPT4->new('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');

print color('bold green'),"-------------------------------";
print color('bold green')," Buitenzorg Syndicate ChatGPT4";
print color('bold green'),"-------------------------------";

while (1) {
    print color('bold green'),"[ User ] Type your prompt: ";
    my $bs_prompt = <STDIN>;
    chomp $bs_prompt;
 
    my $bs_respon = $gpt4_api->generate_text($bs_prompt);
 
    print color('bold cyan'),"Buitenzorg Bot: $bs_respon \n";
 
    if ($bs_prompt eq 'exit') {
        last;
    }
}
