#!/bin/sh

script_dir=$(cd $(dirname $BASH_SOURCE); pwd)
server_dir="$HOME/server"

cd $script_dir
wget https://papermc.io/ci/job/Paper-1.16/lastSuccessfulBuild/artifact/paperclip.jar \
&& rm -f "$server_dir/paperclip.jar" \
&& mv "$script_dir/paperclip.jar" $server_dir
