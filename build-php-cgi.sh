#!/bin/bash

wget http://us1.php.net/get/php-5.4.13.tar.gz/from/us2.php.net/mirror
php_install_dir=$(pwd)/php-dir
conf_dir=$(pwd)
tar xfz php-5.4.13.tar.gz
cd php-5.4.13
./configure --prefix=$php_install_dir \
        --with-regex=php \
        --enable-cgi \
        --disable-rpath \
        --disable-static \
        --with-pic \
        --with-zlib \
        --with-curl \
        --with-curlwrappers \
        --enable-ftp \
        --enable-zip \
        --with-openssl \
        --enable-mbstring  \
        --enable-inline-optimization \
        --disable-debug \
        --with-config-file-path=$conf_dir \
        && make && make install
