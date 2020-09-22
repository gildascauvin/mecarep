#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


GIT_API=$(grep GIT_API .env | cut -d '=' -f2)
GIT_DASHBOARD=$(grep GIT_DASHBOARD .env | cut -d '=' -f2)
GIT_ADMIN=$(grep GIT_ADMIN .env | cut -d '=' -f2)
GIT_IONIC=$(grep GIT_IONIC .env | cut -d '=' -f2)

echo '---------------------------------------------'
echo '# Clone Api Github project'
echo '---------------------------------------------'

echo $GIT_API
cd $DIR/src/api/ && git clone $GIT_API symfony

echo '---------------------------------------------'
echo '# Clone DASHBOARD Github project'
echo '---------------------------------------------'

echo $GIT_DASHBOARD
cd $DIR/src/dashboard/ && git clone $GIT_DASHBOARD dashboard-app

echo '---------------------------------------------'
echo '# Clone ADMIN Github project'
echo '---------------------------------------------'

echo $GIT_ADMIN
cd $DIR/src/admin/ && git clone GIT_ADMIN admin-app

echo '---------------------------------------------'
echo '# Clone IONIC Github project'
echo '---------------------------------------------'

echo $GIT_IONIC
cd $DIR/src/ionic/ && git clone $GIT_IONIC mobile-app

echo '---------------------------------------------'
echo '# Done !'
echo '---------------------------------------------'
