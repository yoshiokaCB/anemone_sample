# -*- coding: utf-8 -*-
require 'nokogiri'
require 'open-uri'

URL = ARGV[0]
doc = Nokogiri::HTML(open(URL))

puts "title表示"
puts doc.title
p "-----------------------------------"

# ul(tag) を取得（最初に一致したulのブロック）
ul = doc.at_css('ul')

puts "html表示（ulタグ含む）"
puts ul.to_html
p "-----------------------------------"

puts "html表示（ulタグ除く）"
puts ul.inner_html
p "-----------------------------------"

puts "htmlを除外したテキスト表示"
puts ul.text
p "-----------------------------------"


# ul(tag) を取得（nodeで取得）
ul_node = doc.css('ul')

puts "html表示（ulタグ含む）"
puts ul_node.to_html
p "-----------------------------------"

puts "html表示（ulタグ除く）"
puts ul_node.inner_html
p "-----------------------------------"

puts "htmlを除外したテキスト表示"
puts ul_node.text
p "-----------------------------------"
