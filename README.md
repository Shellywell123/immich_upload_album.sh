# Immich Upload Album Script
Simple script that wraps around the [Immichcli](https://immich.app/docs/features/command-line-interface/) to upload a dir of photos/videos as a custom album in [Immich](https://immich.app/).

## Setup
Make your immich API key and url as ENV VARs
```
export IMMICH_API_KEY=<immich-api-key>
export IMMICH_INSTANCE_URL=<immich-instance-url>
```
Install the binary and make it executable
```
wget https://raw.githubusercontent.com/Shellywell123/immich_upload_album.sh/refs/heads/main/immich_upload_album.sh -O /usr/local/bin/immich_upload_album;
sudo chmod +x /usr/local/bin/immich_upload_album
```

## Usage
Execute script like so
```
immich_upload_album -i /path/to/album/dir -a "Album Name in Immich"
```
