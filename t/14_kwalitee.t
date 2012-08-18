# $Id: 14_kwalitee.t 324 2010-11-02 20:55:23Z roland $
# $Revision: 324 $
# $HeadURL: svn+ssh://ipenburg.xs4all.nl/srv/svnroot/barclay/trunk/t/14_kwalitee.t $
# $Date: 2010-11-02 21:55:23 +0100 (Tue, 02 Nov 2010) $

use Test::More;

eval {
    require Test::Kwalitee;
    Test::Kwalitee->import( tests => [qw( -has_meta_yml)] );
};

plan( skip_all => 'Test::Kwalitee not installed; skipping' ) if $@;
