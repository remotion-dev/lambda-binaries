set -e
regions=( 'eu-central-1' 'eu-central-2' 'eu-west-1' 'eu-west-2' 'eu-west-3' 'eu-south-1' 'eu-north-1' 'us-east-1' 'us-east-2' 'us-west-1' 'us-west-2' 'af-south-1' 'ap-south-1' 'ap-east-1' 'ap-southeast-1' 'ap-southeast-2' 'ap-northeast-1' 'ap-northeast-2' 'ap-northeast-3' 'ap-southeast-4' 'ap-southeast-5' 'ca-central-1' 'me-south-1' 'sa-east-1' )
for region in "${regions[@]}"
do : 
    echo $region
    aws s3 cp --region=$region out/remotion-layer-chromium-v14-arm64.zip s3://remotionlambda-binaries-$region/remotion-layer-chromium-v14-arm64.zip
    aws s3 cp --region=$region out/remotion-layer-fonts-v14-arm64.zip s3://remotionlambda-binaries-$region/remotion-layer-fonts-v14-arm64.zip
    aws s3 cp --region=$region out/remotion-layer-emoji-apple-v14-arm64.zip s3://remotionlambda-binaries-$region/remotion-layer-emoji-apple-v14-arm64.zip
    aws s3 cp --region=$region out/remotion-layer-emoji-google-v14-arm64.zip s3://remotionlambda-binaries-$region/remotion-layer-emoji-google-v14-arm64.zip
    aws s3 cp --region=$region out/remotion-layer-cjk-v14-arm64.zip s3://remotionlambda-binaries-$region/remotion-layer-cjk-v14-arm64.zip
done

