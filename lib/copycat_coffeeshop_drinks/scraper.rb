class CopycatCoffeeshopDrinks::Scraper

  def self.scrape_drink_names(url)
    page = Nokogiri::HTML(open(url))
    #name = doc.css
  end

  def scrape_drink_ingredients
  end

  def scrape_drink_instructions
  end

end
