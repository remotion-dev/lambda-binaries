regions=( 'eu-central-1' )
for region in "${regions[@]}"
do : 
    echo $region
    aws s3 cp --region=$region out/remotion-layer-chromium-v11-arm64.zip s3://remotionlambda-binaries-$region/remotion-layer-chromium-v11-arm64.zip
    aws s3 cp --region=$region out/remotion-layer-fonts-v11-arm64.zip s3://remotionlambda-binaries-$region/remotion-layer-fonts-v11-arm64.zip
done

