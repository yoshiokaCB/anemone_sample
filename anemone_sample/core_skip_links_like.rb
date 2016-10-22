# -*- coding: utf-8 -*-
require 'anemone'

URL = ARGV[0]
REGEXP = /news/

Anemone.crawl(URL, depth_limit: 2 ) do |anemone|

  # 出力
  anemone.skip_links_like(REGEXP) { |page| p page.url }

end
