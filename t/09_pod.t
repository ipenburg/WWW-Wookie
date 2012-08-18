# $Id: 09_pod.t 367 2010-11-25 21:19:46Z roland $
# $Revision: 367 $
# $HeadURL: svn+ssh://ipenburg.xs4all.nl/srv/svnroot/barclay/trunk/t/09_pod.t $
# $Date: 2010-11-25 22:19:46 +0100 (Thu, 25 Nov 2010) $

use Test::More;
eval "use Test::Pod 1.41";
plan skip_all => "Test::Pod 1.41 required for testing POD" if $@;
all_pod_files_ok();
