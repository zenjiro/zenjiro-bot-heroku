#!/bin/bash
set -u
red=🔴
white=⚪
curl -s -S https://cgi.city.yokohama.lg.jp/shobo/disaster/ | awk /【災害情報案内】/,/横浜市消防局からのお願いです。/ | sed -E -e 1d -e \$d -e "s/。　+/。/" -e "y/０１２３４５６７８９　/0123456789 /" -e "s/<[^>]+>//g" -e "/^$/d" -e "s/(.+消防隊)/$red\\1/" -e "s/(^[^$red]+救助隊)/$white\\1/"
