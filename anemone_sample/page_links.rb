# -*- coding: utf-8 -*-
require 'anemone'

URL = ARGV[0]

Anemone.crawl(URL, depth_limit: 0 ) do |anemone|

  # 出力
  anemone.on_every_page do |page|
    page.links.each { |link| p link.path }
  end

end
