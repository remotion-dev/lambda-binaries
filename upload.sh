regions=( 'eu-central-1')
for region in "${regions[@]}"
do : 
    echo $region
    aws s3 cp --region=$region out/remotion-layer-chromium-v3.zip s3://remotionlambda-binaries-$region/remotion-layer-chromium-v3.zip
    aws s3 cp --region=$region out/remotion-layer-ffmpeg-v3.zip s3://remotionlambda-binaries-$region/remotion-layer-ffmpeg-v3.zip
    aws s3 cp --region=$region out/remotion-layer-remotion-v3.zip s3://remotionlambda-binaries-$region/remotion-layer-remotion-v3.zip
done

