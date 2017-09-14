# --
# Copyright (C) 2001-2017 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::SupportDataCollector::Plugin::OTRS::UI::SpecialStats;

use strict;
use warnings;

use parent qw(Kernel::System::SupportDataCollector::PluginBase);

use Kernel::Language qw(Translatable);

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::System::DB',
    'Kernel::System::User',
);

sub GetDisplayPath {
    return Translatable('OTRS') . '/' . Translatable('UI - Special Statistics');
}

sub Run {
    my $Self = shift;

    my %PreferenceMap = (
        UserNavBarItemsOrder         => Translatable('Agents using custom main menu ordering'),
        AdminNavigationBarFavourites => Translatable('Agents using favourites for the admin overview'),
    );

    for my $Preference ( sort keys %PreferenceMap ) {

        my %FoundPreferences = $Kernel::OM->Get('Kernel::System::User')->SearchPreferences(
            Key => $Preference,
        );

        $Self->AddResultInformation(
            Identifier => $Preference,
            Label      => $PreferenceMap{$Preference},
            Value      => scalar keys %FoundPreferences,
        );
    }

    return $Self->GetResults();
}

1;
