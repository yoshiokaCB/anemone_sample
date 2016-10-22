# -*- coding: utf-8 -*-
require 'anemone'

URL = ARGV[0]

Anemone.crawl(URL, depth_limit: 1 ) do |anemone|

  # 出力
  anemone.on_every_page { |page| p page.url }

end
