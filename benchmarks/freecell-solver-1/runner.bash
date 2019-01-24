set -x
c_src="$PWD/../source"
git co d31c23ef8
gmake
/usr/bin/time perl "$c_src"/run-tests.pl --glob='{clang-format,perltidy,py-flake8,style-trailing-space}*.t'
/usr/bin/time perl "$c_src"/run-tests.pl --glob='{clang-format,perltidy,py-flake8,style-trailing-space}*.t'
/usr/bin/time perl "$c_src"/run-tests.pl
/usr/bin/time perl "$c_src"/run-tests.pl
git co master
gmake
/usr/bin/time perl "$c_src"/run-tests.pl --glob='{clang-format,perltidy,py-flake8,style-trailing-space}*.t'
/usr/bin/time perl "$c_src"/run-tests.pl --glob='{clang-format,perltidy,py-flake8,style-trailing-space}*.t'
/usr/bin/time perl "$c_src"/run-tests.pl
/usr/bin/time perl "$c_src"/run-tests.pl
