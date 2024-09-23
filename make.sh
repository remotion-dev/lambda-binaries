cd chromium && zip -9 --filesync --recurse-paths chromium.zip .
cd ..
cd fonts && zip -9 --filesync --recurse-paths fonts.zip .
cd ..
cd emoji-apple && zip -9 --filesync --recurse-paths emoji-apple.zip .
cd ..
cd emoji-google && zip -9 --filesync --recurse-paths emoji-google.zip .
cd ..
cd cjk && zip -9 --filesync --recurse-paths cjk.zip .
cd ..

mkdir -p out

mv chromium/chromium.zip out/remotion-layer-chromium-v11-arm64.zip
mv fonts/fonts.zip out/remotion-layer-fonts-v11-arm64.zip
mv emoji-apple/emoji-apple.zip out/remotion-layer-emoji-apple-v11-arm64.zip
mv emoji-google/emoji-google.zip out/remotion-layer-emoji-google-v11-arm64.zip
mv cjk/cjk.zip out/remotion-layer-cjk-v11-arm64.zip
