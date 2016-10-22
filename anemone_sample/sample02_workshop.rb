# -*- coding: utf-8 -*-
require 'anemone'
require 'nokogiri'


###########################################

# http://b.hatena.ne.jp/
# 上記のトップページで内のリンクで'news'を含む
# urlとタイトルを出力してください。

###########################################

URL = ARGV[0]
REGEXP = /news/

Anemone.crawl(URL, depth_limit: 1) do |anemone|

  # ここに動作を書いてください。

end

