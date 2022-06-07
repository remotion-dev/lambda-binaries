cd chromium && zip -9 --filesync --recurse-paths chromium.zip .
cd ..
cd chromium-x64 && zip -9 --filesync --recurse-paths chromium-x64.zip .
cd ..
cd ffmpeg && zip -9 --filesync --recurse-paths ffmpeg.zip .
cd ..
cd ffmpeg-x64 && zip -9 --filesync --recurse-paths ffmpeg-x64.zip .
cd ..
cd remotion && zip -9 --filesync --recurse-paths remotion.zip .
cd ..
cd remotion-x64 && zip -9 --filesync --recurse-paths remotion-x64.zip .
cd ..

mkdir -p out

mv chromium/chromium.zip out/remotion-layer-chromium-v5-arm64.zip
mv chromium-x64/chromium-x64.zip out/remotion-layer-chromium-v5-x86_64.zip

mv ffmpeg/ffmpeg.zip out/remotion-layer-ffmpeg-v5-arm64.zip
mv ffmpeg-x64/ffmpeg-x64.zip out/remotion-layer-ffmpeg-v5-x86_64.zip

mv remotion/remotion.zip out/remotion-layer-remotion-v5-arm64.zip
mv remotion-x64/remotion-x64.zip out/remotion-layer-remotion-v5-x86_64.zip
