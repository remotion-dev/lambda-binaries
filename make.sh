cd chrome && zip -9 --filesync --recurse-paths chrome.zip .
cd ..
cd ffmpeg && zip -9 --filesync --recurse-paths ffmpeg.zip .
cd ..
cd remotion && zip -9 --filesync --recurse-paths remotion.zip .
cd ..

mkdir -p out
mv chrome/chrome.zip out/remotion-layer-chrome-v1.zip
mv ffmpeg/ffmpeg.zip out/remotion-layer-ffmpeg-v1.zip
mv remotion/remotion.zip out/remotion-layer-remotion-v1.zip
