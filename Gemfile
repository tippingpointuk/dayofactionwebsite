# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem "jekyll", "~> 4.2.0"

gem 'nokogiri'

gem "jekyll-theme-chaos" # Latest version

group :jekyll_plugins do
  gem "jekyll-airtable-import"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]
