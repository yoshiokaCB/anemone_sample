# -*- coding: utf-8 -*-
require 'anemone'

URL = ARGV[0]

Anemone.crawl(URL, depth_limit: 1 ) do |anemone|

  # ページから取得したリンクの最初の10個のみ取得する
  anemone.focus_crawl { |page| page.links.slice(0..9) }

  # ここがメインの部分
  anemone.on_every_page { |page| p page.url }

end