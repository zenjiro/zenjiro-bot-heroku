#!/bin/bash
set -u
red=π΄
orange=π 
green=π’
curl -s -S https://www.tokyu.co.jp/unten/unten2.json | jq -r .unten | sed "s/<br>/\n/g" | grep -E -v "ηΎε¨\$" | sed -E -e "1s/(.+(ιδΌ|ζθΏγιθ»’|ιθ»’γθ¦εγγγ¦γγΎγ|ζ―ζΏθΌΈι))/$red\\1/" -e "1s/(^[^$red].+εΉ³εΈΈιγιθ»’)/$green\\1/" -e "1s/(^[^$red$green])/$orange\\1/"
