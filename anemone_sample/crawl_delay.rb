# -*- coding: utf-8 -*-
require 'anemone'

URL = ARGV[0]

Anemone.crawl(URL, delay: 2, depth_limit: 1) do |anemone|
  anemone.on_every_page { |page| puts page.url }
end