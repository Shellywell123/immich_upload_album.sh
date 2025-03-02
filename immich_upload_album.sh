#!/bin/bash

IMMICH_API_KEY="$IMMICH_API_KEY"
IMMICH_INSTANCE_URL="$IMMICH_INSTANCE_URL"

# todo check api key is not null

while getopts ":i:a:" choice; do
  case $choice in
    i)
      INPUT_DIR="$OPTARG"
      ;;
    a)
      ALBUM_NAME="$OPTARG"
      ;;
    *)
      echo "Usage: $0 [-i input_dir] [-a album_name] [-u immich_url]"
      exit 1
      ;;
  esac
done

# echo "Input directory is: $input_dir"
# todo validate input dir

docker run -it -v "$(pwd)":/import:ro -e IMMICH_INSTANCE_URL=$IMMICH_INSTANCE_URL -e IMMICH_API_KEY=$IMMICH_API_KEY ghcr.io/immich-app/immich-cli:latest upload --album-name "$ALBUM_NAME" --recursive $INPUT_DIR
