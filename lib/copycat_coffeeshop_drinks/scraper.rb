class CopycatCoffeeshopDrinks::Scraper

  def self.scrape_drinks(url)
    webpage = Nokogiri::HTML(open(url))
    ingredient_card = webpage.css("div.recipe-ingredients")

    ingredient_card.map do |link|
      binding.pry
      CopycatCoffeeshopDrinks::Ingredients.new(link, text)
  end
end

  def scrape_ingredients
  end

  def scrape_instructions
  end

end
