require 'nokogiri'
require 'open-uri'

module Jekyll
  module ParseDoc
    def parse_gdoc(link)
      ids = /[-\w]{25,}/.match(link)
      return unless ids
      f = URI.open("https://docs.google.com/feeds/download/documents/export/Export?id=#{ids[0]}&exportFormat=html")
      html = Nokogiri::HTML.parse(f)
      # Need to, ideally, do more formatting to:
      # * Bold classes to <strong> tags
      # * Italic classes to <em> tags
      # * Properly nest lists
      return html.css('body').inner_html
    end
  end
end

Liquid::Template.register_filter(Jekyll::ParseDoc)
