class CopycatCoffeeshopDrinks::Scraper

  def self.scrape_drinks
    webpage = Nokogiri::HTML(open("https://www.tasteofhome.com/collection/homemade-coffee-shop-drinks/view-all/"))
binding.pry
    drinks = webpage.css("div.listicle-page")
    drinks.each do |drink_card|
      drink = CopycatCoffeeshopDrinks::Drinks.new(title, url)
      drink.title = drink_card.css("h4.listicle-page__title a").text
    end

  #h4.listicle-page__title a.href = possible link
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
