# immich album upload
Simple script that wraps around the immichcli to upload a dir of photos/videos as a custom album in Immich.

## Usage
Make your immich api key an ENV VAR
```
export IMMICH_API_KEY=<immich-api-key>
```

Excute script like so
```
sh immich_upload_album.sh -u <immich-instance-url>/api -i /path/to/album/dir -a "Album Name in Immich"
```
