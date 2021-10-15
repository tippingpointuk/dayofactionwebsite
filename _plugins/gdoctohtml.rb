require 'nokogiri'
require 'open-uri'

module Jekyll
  module ParseDoc
    def parse_gdoc(link)
      ids = /[-\w]{25,}/.match(link)
      if !ids
        return
      end
      puts ids
      f = URI.open("https://docs.google.com/feeds/download/documents/export/Export?id="+ ids[0] +"&exportFormat=html")
      html = Nokogiri::HTML.parse(f)
      return html.css('body').inner_html
    end
  end
end

Liquid::Template.register_filter(Jekyll::ParseDoc)
