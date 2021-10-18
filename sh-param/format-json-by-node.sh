#!/bin/sh
echo "位置パラメータは下記の通りです"
echo "0:$0 1:$1 2:$2 3:$3 4:$4 5:$5 6:$6 7:$7 8:$8 9:$9"
echo ""
echo "引数の数は $#個です."
echo ""

if [ $# = 0 ]; then
	echo "引数未指定."
	echo "カレントディレクトリのJSONを引数に再設定します"
	set *.json
	echo "0:$0 1:$1 2:$2 3:$3 4:$4 5:$5 6:$6 7:$7 8:$8 9:$9"
fi

echo "実行結果："
for json in $@; do echo "-------- 整形対象：$json --------"; node -e "console.log(JSON.stringify($(cat $json),null,4))"; done;
