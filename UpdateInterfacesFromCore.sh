#!/bin/bash

ownCloudCorePath="../ownCloud"
destinationPath="../ownCloudInterfaces"

# Get files containing ownCloud interfaces
egrep "interface [a-zA-Z0-9_\\ ]+{" $ownCloudCorePath -ri --include=*.php --exclude-dir=apps --exclude-dir=tests --exclude-dir=3rdparty | cut -d ":" -f 1 | while read -r file; do

	relativePath=${file#$ownCloudCorePath}
	relativeDir=${relativePath%/*.*}

	destinationDir="$destinationPath$relativeDir"

	if [ ! -d "$destinationDir" ]; then
		mkdir -p "$destinationDir"
	fi

	echo "Copying $file to $destinationDir."
	cp $file $destinationDir
done
