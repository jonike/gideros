cd ..
cd plugins
cd LuaSocket
cd source
rm -rf build
/Applications/Xcode-beta.app/Contents/Developer/usr/bin/xcodebuild -alltargets -sdk appletvos9.0 -configuration Release -project luasocket.xcodeproj GCC_PREPROCESSOR_DEFINITIONS='${inherited} TARGET_OS_TV=1' HEADER_SEARCH_PATHS='${inherited} ../../../lua/src'
/Applications/Xcode-beta.app/Contents/Developer/usr/bin/xcodebuild -alltargets -sdk appletvsimulator -configuration Release -project luasocket.xcodeproj GCC_PREPROCESSOR_DEFINITIONS='${inherited} TARGET_OS_TV=1' HEADER_SEARCH_PATHS='${inherited} ../../../lua/src'
lipo build/Release-appletvos/libluasocket.a build/Release-appletvsimulator/libluasocket.a -create -output libluasocket.a
mkdir ../../../ui/Templates/Xcode4/iOS\ Template/iOS\ Template/Plugins
mv libluasocket.a ../../../ui/Templates/Xcode4/iOS\ Template/AppleTV/Plugins
cd ../../..
cd scripts

