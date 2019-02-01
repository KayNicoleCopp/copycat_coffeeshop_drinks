class CopycatCoffeeshopDrinks::Scraper

  def self.scrape_drinks(url)
    webpage = Nokogiri::HTML(open(url))
    #name = doc.css
  end

  def scrape_ingredients
  end

  def scrape_instructions
  end

end
