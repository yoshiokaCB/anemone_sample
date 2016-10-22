# -*- coding: utf-8 -*-
require 'nokogiri'
require 'open-uri'

URL = ARGV[0]
doc = Nokogiri::HTML(open(URL))

p doc
