use strict;
use warnings;
use inc::Module::Install    1.06;
use Module::Install::XSUtil 0.41;


all_from 'lib/Data/Util.pm';

author_tests 'xt', 'author/t';

if(want_xs()){
    use_xshelper;
    cc_warnings;
    cc_define '-DINLINE_STR_EQ';
}

auto_set_repository;

clean_files  q{
    Data-Util-*
    *.stackdump
    *.gcov *.gcda *.gcno
    *.out
    nytprof
    cover_db
};

cpanfile;
WriteAll check_nmake => 0;

