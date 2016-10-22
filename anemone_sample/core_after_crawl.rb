# -*- coding: utf-8 -*-
require 'anemone'

URL = ARGV[0]
REGEXP = /news/

Anemone.crawl(URL, depth_limit: 0 ) do |anemone|

  anemone.focus_crawl { |page| page.links.slice(0..1) }

  # ここがメインの部分
  anemone.on_every_page do |page|
    p page.url
  end
  anemone.after_crawl do |page|
    page.links.keep_if { |link|
      link.to_s.match(REGEXP)
    }
  end

end