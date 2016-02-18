#!/bin/bash
#
# Browse Happy
#
# @copyright (c) 2016 Matt Friedman
# @license GNU General Public License, version 2 (GPL-2.0)
#
set -e
set -x

DB=$1
TRAVIS_PHP_VERSION=$2

if [ "$DB" == "mysqli" -a "$TRAVIS_PHP_VERSION" == "5.3.3" ]
then
	cd phpBB
	composer require phpbb/epv:dev-master --dev --no-interaction --prefer-source
	cd ../
fi
