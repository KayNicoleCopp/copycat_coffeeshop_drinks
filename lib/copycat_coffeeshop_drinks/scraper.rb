class CopycatCoffeeshopDrinks::Scraper

  def self.scrape_drinks
    webpage = Nokogiri::HTML(open("https://www.tasteofhome.com/collection/homemade-coffee-shop-drinks/view-all/"))
    drinks = webpage.css("div.listicle-page")
    drinks.each do |drink_card|
      title = drink_card.css("h4.listicle-page__title a").text
      link = drink_card.css("h4.listicle-page__title a").attribute("href").value
      drink = CopycatCoffeeshopDrinks::Drinks.new(title, link)
    end

def self.scrape_instruction_card
  ingredients = drink.css(".recipe-ingredients").text #error message saying undefined local method 'drink'
  ingredients
end
    #ingredient_card = webpage.css("div.recipe-ingredients")

    #ingredient_card.map do |link|
      #binding.pry
      #CopycatCoffeeshopDrinks::Ingredients.new(link, text)
end

  def scrape_ingredients
  end

  def scrape_instructions
  end

end
