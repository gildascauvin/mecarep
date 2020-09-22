#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo '---------------------------------------------'
echo '# Clean ./src/* forlder'
echo '---------------------------------------------'

rm -rf ./src

echo '---------------------------------------------'
echo '# Creation forlders'
echo '---------------------------------------------'
echo './src/admin'
echo './src/dashboard'
echo './src/ionic'
echo './src/api'

pwd
echo $DIR/src
mkdir -p $DIR/src && cd $DIR/src \
	&& mkdir -p admin dashboard ionic api

echo '---------------------------------------------'
echo '# Init admin project with angular'
echo '---------------------------------------------'

cd $DIR/src/admin \
	&& pwd \
	&& rm -rf ./* \
	&& ng new admin-app --routing=true  --style=scss

echo '---------------------------------------------'
echo '# Init dashboard project with angular'
echo '---------------------------------------------'

cd $DIR/src/dashboard \
	&& pwd \
	&& rm -rf ./* 
	# && ng new dashboard-app --routing=true  --style=scss

echo '---------------------------------------------'
echo '# Init Mobile project with Ionic'
echo '---------------------------------------------'

cd $DIR/src/ionic \
	&& pwd \
	&& rm -rf ./* 
	# && ionic  start mobile-app blank  --cordova  --capacitor --type=angular --no-interactive

echo '---------------------------------------------'
echo '# Install symfony cli'
echo '---------------------------------------------'
curl -sS https://get.symfony.com/cli/installer | bash \
	&&  mv $HOME/.symfony/bin/symfony /usr/local/bin/symfony

echo '---------------------------------------------'
echo '# Init Api project with Symfony'
echo '---------------------------------------------'

cd $DIR/src/api \
	&& pwd \
	 && rm -rf ./*
	# && symfony new symfony



