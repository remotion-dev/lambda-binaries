regions=( eu-central-1 us-east-1 us-east-2 us-west-1 us-west-2 af-south-1 ap-east-1 ap-south-1 ap-northeast-3 ap-northeast-2 ap-southeast-1 ap-southeast-2 ap-northeast-1 ca-central-1 eu-west-1 eu-west-2 eu-south-1 eu-west-3 eu-north-1 me-south-1 sa-east-1)
for region in "${regions[@]}"
do : 
    echo $region
    aws s3 cp --region=$region out/remotion-layer-chromium-v2.zip s3://remotionlambda-binaries-$region/remotion-layer-chromium-v2.zip
    aws s3 cp --region=$region out/remotion-layer-ffmpeg-v2.zip s3://remotionlambda-binaries-$region/remotion-layer-ffmpeg-v2.zip
    aws s3 cp --region=$region out/remotion-layer-remotion-v2.zip s3://remotionlambda-binaries-$region/remotion-layer-remotion-v2.zip
done

