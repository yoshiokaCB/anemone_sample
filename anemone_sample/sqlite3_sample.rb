# -*- coding: utf-8 -*-
require 'anemone'

URL = ARGV[0]
REGEXP = /news/

opt = {
    storage: Anemone::Storage::SQLite3(),
    obey_robots_txt: true,
    depth_limit: 1,
}

Anemone.crawl(URL, opt) do |anemone|

  anemone.on_every_page do |page|
    puts page.url
    p page.doc.title.to_s if page.doc
  end

end

