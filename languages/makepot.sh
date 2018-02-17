#!/bin/bash
#
# Generate a GetText compatible .pot file for generating translation files for Known language files.
#
# Usage:
#   makepot.sh directory > language.pot
#

find $1 -type f -regex ".*\.php" | xargs -i{} sh -c "cat {} | php processfile.php {}"
