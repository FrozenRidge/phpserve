To run jQuery tests:

- Clone jQuery repo recursively
    `git clone --recursive https://github.com/jquery/jquery.git`
- Install grunt globally
    `sudo npm install -g grunt-cli`
- Ensure you have `php-cgi` binary in $PATH
    `bash ./build-php-cgi.sh && sudo cp php-dir/bin/php-cgi /usr/local/bin`
- Build jQuery:
    `grunt` in jquery repo root
- Start phpserve in jQuery root
    `node /path/to/phpserver/index.js`
- Start jQuery tests by opening browser on http://localhost:8080/index.html
