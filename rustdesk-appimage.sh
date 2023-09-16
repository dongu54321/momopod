sudo apt update && sudo apt upgrade -y && sudo apt install curl wget
LATEST_RELEASE_URL=https://github.com/rustdesk/rustdesk/releases/latest
release_url=$(curl -Ls -o /dev/null -w %{url_effective} $LATEST_RELEASE_URL)
version=${release_url##*/}
download_url=https://github.com/rustdesk/rustdesk/releases/download/$version/rustdesk-$version-x86_64.AppImage
download_file=./rustdesk.AppImage

wget -q --show-progress $download_url -O $download_file
chmod +x rustdesk.AppImage
./rustdesk.AppImage
