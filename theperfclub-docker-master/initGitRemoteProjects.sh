#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

GIT_API=$(grep GIT_API .env | cut -d '=' -f2)
GIT_DASHBOARD=$(grep GIT_DASHBOARD .env | cut -d '=' -f2)
GIT_ADMIN=$(grep GIT_ADMIN .env | cut -d '=' -f2)
GIT_IONIC=$(grep GIT_IONIC .env | cut -d '=' -f2)


echo '---------------------------------------------'
echo '# Commit to Api Github project'
echo '---------------------------------------------'

echo $GIT_API
cd $DIR/src/api/symfony \
	&& git init \
	&& git add . \
	&& git commit -m 'First commit' \
	&& git branch --set-upstream-to=origin/master master \
	&& git push -u origin master


echo '---------------------------------------------'
echo '# Commit to Dashboard Github project'
echo '---------------------------------------------'

echo $GIT_DASHBOARD
cd $DIR/src/dashboard/dashboard-app \
	&& git init \
	&& git add . \
	&& git commit -m 'First commit' \
	&& git branch --set-upstream-to=origin/master master \
	&& git push -u origin master

echo '---------------------------------------------'
echo '# Commit to Admin Github project'
echo '---------------------------------------------'

echo $GIT_ADMIN
cd $DIR/src/admin/admin-app \
	&& git init \
	&& git add . \
	&& git commit -m 'First commit' \
	&& git branch --set-upstream-to=origin/master master \
	&& git push -u origin master

echo '---------------------------------------------'
echo '# Commit to Ionic Github project'
echo '---------------------------------------------'

echo $GIT_IONIC
cd $DIR/src/ionic/mobile-app \
	&& git init \
	&& git add . \
	&& git commit -m 'First commit' \
	&& git branch --set-upstream-to=origin/master master \
	&& git push -u origin master

echo '---------------------------------------------'
echo '# Init Api Github project'
echo '---------------------------------------------'

echo $GIT_API
cd $DIR/src/api/symfony \
	&& git pull \
	&& git push -u origin master

echo '---------------------------------------------'
echo '# Init Dashboard Github project'
echo '---------------------------------------------'

echo $GIT_DASHBOARD
cd $DIR/src/dashboard/dashboard-app \
	&& git pull \
	&& git push -u origin master
echo '---------------------------------------------'
echo '# Init Admin Github project'
echo '---------------------------------------------'

echo $GIT_ADMIN
cd $DIR/src/admin/admin-app \
	&& git pull \
	&& git push -u origin master
echo '---------------------------------------------'
echo '# Init Ionic Github project'
echo '---------------------------------------------'

echo $GIT_IONIC
cd $DIR/src/ionic/mobile-app \
	&& git pull \
	&& git push -u origin master

