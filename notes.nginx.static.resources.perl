# The MIT License (MIT)
# Copyright (c) 2013 Matthew D Huckaby
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
# modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software
# is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# 
#
# Perl notes pertaining to NGINX location matching for static resources
#

sub matchStatic {
    $match_to = $_[0];

    if ($match_to =~ m/\/appname\/static\/(css|js)\/(.*)\.(css|js)/) {
        print "1 found: '$1'\n";
        print "2 found: '$2'\n";
        print "3 found: '$3'\n";
    }
}

$url_js = "http://subdomain.website.com/appname/static/js/jquery.js";
$url_css = "http://subdomain.website.com/appname/static/css/bootstrap.css";

matchStatic($url_js);
matchStatic($url_css);
