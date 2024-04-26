cd chromium && zip -9 --filesync --recurse-paths chromium.zip .
cd ..
cd fonts && zip -9 --filesync --recurse-paths fonts.zip .
cd ..

mkdir -p out

mv chromium/chromium.zip out/remotion-layer-chromium-v11-arm64.zip
mv fonts/fonts.zip out/remotion-layer-fonts-v11-arm64.zip
