# -*- coding: utf-8 -*-
require 'anemone'
require 'nokogiri'


###########################################
# urlにnewsを含むページだけを取得して表示する。
###########################################

URL = ARGV[0]
REGEXP = /news/

site_data = []

Anemone.crawl(URL, depth_limit: 1) do |anemone|

  # 例 1
  anemone.focus_crawl do |page|
    # 条件に一致するリンクだけ残す
    page.links.keep_if { |link| link.to_s.match(REGEXP) }
  end

  anemone.on_every_page do |page|
    site_data << {
        url: page.url.to_s,
        title: page.doc.title.to_s
    }
  end


  # 例 2
  anemone.on_pages_like(REGEXP) do |page|
    page_doc = page.doc ? page.doc : nil
    site_data << {
        url: page.url.to_s,
        title: page_doc.title.to_s
    }
  end

end

p site_data