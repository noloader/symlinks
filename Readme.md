symlinks
========
**scan/change symbolic links**

Symlinks is a simple tool that helps find and remedy problematic symbolic links on a system.


Description
-----------

Symlinks scans directories for symbolic links, identifying dangling, relative, absolute, messy, and other_fs links.  It can also change absolute links to relative within a given filesystem.


Installation
------------

### Source:

    $ ./configure
    $ make
    $ make install


Usage
-----

### Scan:

    $ symlinks -r [path]


### Show all symlinks:

    $ symlinks -rv [path]


### Convert absolute symlinks to a relative:

    $ symlinks -rc  [path]


### More options:

    $ symlinks -h


Changes
-------

* v1.4-1
Added Mac OS X compatibility.

* v1.4 
Incorporate patches from Fedora.

* v1.3
More messy-link fixes, new -o flag for other_fs.

* v1.2 
Added -s flag to shorten links with redundant path elements.  Also includes code to remove excess slashes from paths.


Credit
------

Symlinks was originally created by Mark Lord (mlord@pobox.com).