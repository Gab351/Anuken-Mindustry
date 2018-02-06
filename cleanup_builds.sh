#!/bin/bash

OLD_TRAVIS_BUILD_NUMBER=`expr ${TRAVIS_BUILD_NUMBER} - 7`
OLD_DESKFILE="${OLD_TRAVIS_BUILD_NUMBER}-Gab351-mod.jar"
OLD_FILE1="Bleeding-Edge-Build-${OLD_TRAVIS_BUILD_NUMBER}.md"

echo "OLD_TRAVIS_BUILD_NUMBER=${OLD_TRAVIS_BUILD_NUMBER}"
echo "OLD_DESKFILE=${OLD_DESKFILE}"
echo "OLD_FILE1=${OLD_FILE1}"

if [ -e "{OLD_FILE1}" ]; then
    echo "Cleaning up old build #${OLD_TRAVIS_BUILD_NUMBER}"
    git rm -f ${OLD_FILE1}
    git rm -f ${OLD_DESKFILE}
    git status
fi
