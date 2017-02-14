source 'https://rubygems.org'

require 'json'
require 'open-uri'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)

gem 'jekyll', '~> 3.3'
gem 'github-pages', versions['github-pages'], group: :jekyll_plugin
gem 'jekyll-theme-merlot'
