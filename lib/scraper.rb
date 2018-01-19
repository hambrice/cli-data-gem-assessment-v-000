require "open-uri"

class Scraper
  
  def item_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    items = doc.css(".rows")
    items.collect do |item|
      item.css(".result-row a")[0]["href"]
  end
end