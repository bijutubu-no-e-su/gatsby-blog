#!/bin/bash

#スクリプトカレント取得
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR/my-site

gatsby develop -H 0.0.0.0
