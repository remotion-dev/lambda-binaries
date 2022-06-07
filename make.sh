cd chromium && zip -9 --filesync --recurse-paths chromium.zip .
cd ..
cd chromium-x64 && zip -9 --filesync --recurse-paths chromium-x64.zip .
cd ..
cd ffmpeg && zip -9 --filesync --recurse-paths ffmpeg.zip .
cd ..
cd ffmpeg-x64 && zip -9 --filesync --recurse-paths ffmpeg-x64.zip .
cd ..
cd fonts && zip -9 --filesync --recurse-paths fonts.zip .
cd ..
cd fonts-x64 && zip -9 --filesync --recurse-paths fonts-x64.zip .
cd ..

mkdir -p out

mv chromium/chromium.zip out/remotion-layer-chromium-v6-arm64.zip
mv chromium-x64/chromium-x64.zip out/remotion-layer-chromium-v6-x86_64.zip

mv ffmpeg/ffmpeg.zip out/remotion-layer-ffmpeg-v6-arm64.zip
mv ffmpeg-x64/ffmpeg-x64.zip out/remotion-layer-ffmpeg-v6-x86_64.zip

mv fonts/fonts.zip out/remotion-layer-fonts-v6-arm64.zip
mv fonts-x64/fonts-x64.zip out/remotion-layer-fonts-v6-x86_64.zip
