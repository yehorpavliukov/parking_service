#!/bin/sh
CWD=`pwd`
CCWD=$(pwd)
PACKAGES_RELATIVE_PATH="packages"
PACKAGES_DIR="$CWD/$PACKAGES_RELATIVE_PATH"

fvm flutter clean

$CCWD/scripts/clean_all_pubspec_lock.sh

cd example && fvm flutter clean
cd ..

for d in $(ls $PACKAGES_DIR)
do
    PACKAGE_DIR="$PACKAGES_DIR/$d"
    echo "Entering $PACKAGES_RELATIVE_PATH/$d"
    cd $PACKAGE_DIR && fvm flutter clean
done
