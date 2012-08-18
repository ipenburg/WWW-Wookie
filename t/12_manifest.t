# $Id: 12_manifest.t 324 2010-11-02 20:55:23Z roland $
# $Revision: 324 $
# $HeadURL: svn+ssh://ipenburg.xs4all.nl/srv/svnroot/barclay/trunk/t/12_manifest.t $
# $Date: 2010-11-02 21:55:23 +0100 (Tue, 02 Nov 2010) $

use Test::More;
eval "use Test::CheckManifest 1.01";
plan skip_all => "Test::CheckManifest 1.01 required for testing test coverage"
  if $@;
ok_manifest( { filter => [qr/(Debian_CPANTS.txt|\.(svn|bak))/] } );
