class CopycatCoffeeshopDrinks::Scraper

  def self.scrape_drink_names(url)
    page = Nokogiri::HTML(open(https://www.tasteofhome.com/collection/homemade-coffee-shop-drinks/view-all/))
    #name = doc.css
  end

  def scrape_drink_ingredients
  end

  def scrape_drink_instructions
  end

end
