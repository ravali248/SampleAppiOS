xcodebuild\
 -project "../SampleAppJenkinsIOS.xcodeproj"\
 -scheme "SampleAppJenkinsIOS"\
 -sdk iphonesimulator\
 -destination 'id=4090A310-83E4-4700-A6FE-6BA9EBA78EE0'\
 clean test

#Check exit status
if [ $? != 0 ]; then
echo XCODEBUILD RETURNED: $?
echo -e "Xcodebuild test failed"
exit 1
else
echo TEST SUCCEEDED
fi
