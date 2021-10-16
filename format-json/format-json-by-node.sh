#!/bin/sh
node -e "console.log(JSON.stringify($(cat hoge.json),null,4))"
