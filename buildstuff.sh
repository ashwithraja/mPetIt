#!/bin/bash
FAILED=0

cd ./mSiS-app
ant -f build.xml
ant clean
ant debug
if [ "$?" = 1 ]; then
    echo "Application failed!"
    FAILED=1
fi
cd ..

# cd ./FridgeMagnetTest
# ant clean
# ant test
# if [ "$?" = 1 ]; then
	# echo "FridgeMagnetTest build failed!"
    # FAILED=1
# fi
# cd ..
exit $FAILED
