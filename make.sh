cd chromium && zip -9 --filesync --recurse-paths chromium.zip .
cd ..
cd ffmpeg && zip -9 --filesync --recurse-paths ffmpeg.zip .
cd ..
cd remotion && zip -9 --filesync --recurse-paths remotion.zip .
cd ..

mkdir -p out
mv chromium/chromium.zip out/remotion-layer-chromium-v3.zip
mv ffmpeg/ffmpeg.zip out/remotion-layer-ffmpeg-v3.zip
mv remotion/remotion.zip out/remotion-layer-remotion-v3.zip
