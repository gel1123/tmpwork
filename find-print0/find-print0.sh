#!/bin/sh
echo '▼スペース入りファイル名が誤って解釈される'
find . -name '*.txt' | xargs cat
echo '▼NULL文字区切りで、スペース入りファイル名を正しく解釈'
find . -name '*.txt' -print0 | xargs -0 cat
